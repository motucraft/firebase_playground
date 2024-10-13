import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_playground/common/page/dialog_page.dart';
import 'package:firebase_playground/common/provider/loading_provider.dart';
import 'package:firebase_playground/dataconnect/dataconnect-generated/dart/default_connector/default.dart';
import 'package:firebase_playground/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:go_router/go_router.dart';

part 'main_dataconnect.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: ref.watch(routingProvider),
      builder: (_, child) {
        return Stack(
          children: [
            if (child != null) child,
            Consumer(
              builder: (_, ref, __) {
                final isLoading = ref.watch(loadingProvider);
                if (isLoading) {
                  return ColoredBox(
                    color: Colors.black54,
                    child: Center(child: const CircularProgressIndicator()),
                  );
                }
                return const SizedBox();
              },
            ),
          ],
        );
      },
    );
  }
}

class MovieList extends StatelessWidget {
  const MovieList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firebase Data Connect'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
                onPressed: () => context.push('/create-movie'),
                icon: const Icon(Icons.add)),
          ),
        ],
      ),
      body: Consumer(
        builder: (context, ref, child) {
          final moviesAsyncValue = ref.watch(moviesProvider);
          if (moviesAsyncValue.hasError || moviesAsyncValue.isLoading) {
            return Center(child: CircularProgressIndicator());
          }

          final movies = moviesAsyncValue.valueOrNull;
          if (movies == null || movies.isEmpty) {
            return const SizedBox();
          }

          return ListView.separated(
            itemCount: movies.length,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            separatorBuilder: (_, __) => const Divider(),
            itemBuilder: (context, index) {
              final movie = movies[index];
              return ListTile(
                title: Text(movie.title),
                subtitle: Text(movie.genre ?? ''),
                leading: Image.network(movie.imageUrl),
                trailing: Icon(Icons.chevron_right),
                onTap: () {
                  context.go('/movie-detail/${movie.id}?title=${movie.title}');
                },
              );
            },
          );
        },
      ),
    );
  }
}

class MovieDetail extends ConsumerWidget {
  final String id;
  final String title;

  const MovieDetail({
    super.key,
    required this.id,
    required this.title,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Consumer(
        builder: (context, ref, child) {
          final movieAsyncValue = ref.watch(movieByIdProvider(id: id));
          if (movieAsyncValue.hasError || movieAsyncValue.isLoading) {
            return Center(child: CircularProgressIndicator());
          }

          final movie = movieAsyncValue.valueOrNull;
          final metadata = movie?.metadata;

          return movie == null || metadata == null
              ? const SizedBox()
              : Padding(
                  padding: const EdgeInsets.all(16),
                  child: ListView(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                movie.title,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                movie.genre ?? '',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  Icon(Icons.star,
                                      color: Colors.yellow, size: 20),
                                  const SizedBox(width: 4),
                                  Text(
                                    (metadata.rating ?? 0).toString(),
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 16),
                              Text(
                                metadata.releaseYear.toString(),
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ],
                          ),
                          Image.network(movie.imageUrl, width: 64),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text(
                        metadata.description ?? '',
                        style: Theme.of(context).textTheme.bodyLarge,
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                );
        },
      ),
    );
  }
}

class CreateMovieDialog extends HookConsumerWidget {
  const CreateMovieDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final widthRatio = MediaQuery.sizeOf(context).width / 375;

    final titleController = useTextEditingController();
    final genreController = useTextEditingController();
    final imageUrlController = useTextEditingController();
    final releaseYearController = useTextEditingController();
    final descriptionController = useTextEditingController();
    final ratingController = useTextEditingController();

    final formKey = useMemoized(() => GlobalKey<FormState>());

    Future<void> createMovie() async {
      // TODO: Transaction required

      // create movie
      final result = await DefaultConnector.instance
          .createMovie(
              title: titleController.text,
              genre: genreController.text,
              imageUrl: imageUrlController.text)
          .execute();
      final movieId = result.data.movie_insert.id;

      // create movie metadata
      await DefaultConnector.instance
          .createMovieMetadata(
            movieId: movieId,
          )
          .releaseYear(int.parse(releaseYearController.text))
          .description(descriptionController.text)
          .rating(double.parse(ratingController.text))
          .execute();
    }

    return Dialog(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.transparent,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 300 * widthRatio),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormField(
                    controller: titleController,
                    decoration: const InputDecoration(labelText: 'Title'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'please input title.';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: genreController,
                    decoration: const InputDecoration(labelText: 'Genre'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'please input genre.';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: imageUrlController,
                    decoration: const InputDecoration(labelText: 'Image URL'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'please input image URL.';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: releaseYearController,
                    decoration:
                        const InputDecoration(labelText: 'Release Year'),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || int.tryParse(value) == null) {
                        return 'please input valid release year.';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: descriptionController,
                    decoration: const InputDecoration(labelText: 'Description'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'please input description.';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: ratingController,
                    decoration:
                        const InputDecoration(labelText: 'Rating (1-5)'),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      final rating = double.tryParse(value ?? '');
                      if (rating == null || rating < 1 || rating > 5) {
                        return 'please input valid rating (1-5).';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () async {
                        if (formKey.currentState?.validate() == true) {
                          await ref
                              .read(loadingProvider.notifier)
                              .wrap(createMovie());

                          if (context.mounted) {
                            context.pop();
                          }
                        }
                      },
                      child: Text('create'),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: context.pop,
                      child: Text('cancel'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

@riverpod
GoRouter routing(RoutingRef ref) {
  final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        pageBuilder: (_, __) =>
            const MaterialPage(name: 'home', child: MovieList()),
        routes: [
          GoRoute(
            path: 'movie-detail/:id',
            pageBuilder: (_, state) {
              final id = state.pathParameters['id'];
              final title = state.uri.queryParameters['title'];
              if (id == null || id.isEmpty || title == null || title.isEmpty) {
                throw UnsupportedError(
                  'pathParameters=${state.pathParameters}, queryParameters=${state.uri.queryParameters}',
                );
              }

              return MaterialPage(
                name: 'id',
                child: MovieDetail(id: id, title: title),
              );
            },
          ),
        ],
      ),
      GoRoute(
        path: '/create-movie',
        pageBuilder: (_, __) {
          return DialogPage(builder: (context) => CreateMovieDialog());
        },
      ),
    ],
  );

  ref.onDispose(router.dispose);
  return router;
}

@riverpod
Future<List<ListMoviesMovies>> movies(MoviesRef ref) async {
  final result = await DefaultConnector.instance.listMovies().execute();
  return result.data.movies;
}

@riverpod
Future<GetMovieByIdMovie?> movieById(MovieByIdRef ref,
    {required String id}) async {
  final result = await DefaultConnector.instance.getMovieById(id: id).execute();
  return result.data.movie;
}

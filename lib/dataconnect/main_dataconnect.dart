import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_playground/dataconnect/dataconnect-generated/dart/default_connector/default.dart';
import 'package:firebase_playground/firebase_options.dart';
import 'package:flutter/material.dart';
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
    );
  }
}

class MovieList extends StatelessWidget {
  const MovieList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Firebase Data Connect')),
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

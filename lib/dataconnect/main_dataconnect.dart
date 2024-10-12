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

  final result = await DefaultConnector.instance.listMovies().execute();
  print('data=${result.data.movies.first.title}');

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

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

@riverpod
GoRouter routing(RoutingRef ref) {
  final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        pageBuilder: (_, __) => const MaterialPage(name: 'home', child: Home()),
      ),
    ],
  );

  ref.onDispose(router.dispose);
  return router;
}

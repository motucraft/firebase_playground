import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_playground/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'main_analytics.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    FirebaseAnalytics.instance.logAppOpen();

    return MaterialApp.router(
      routerConfig: ref.watch(routingProvider),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => context.goNamed('page1'),
              child: const Text('to Page1'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () => context.goNamed('page2'),
              child: const Text('to Page2'),
            ),
          ],
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page1'),
      ),
      body: const Center(
        child: Text('Page1'),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page2'),
      ),
      body: const Center(
        child: Text('Page2'),
      ),
    );
  }
}

@riverpod
GoRouter routing(RoutingRef ref) {
  final router = GoRouter(
    observers: [
      FirebaseAnalyticsObserver(analytics: FirebaseAnalytics.instance),
    ],
    routes: [
      GoRoute(
        path: '/',
        pageBuilder: (_, __) => const MaterialPage(name: 'home', child: Home()),
        routes: [
          GoRoute(
            path: 'page1',
            name: 'page1',
            pageBuilder: (_, __) => const MaterialPage(name: 'page1', child: Page1()),
          ),
          GoRoute(
            path: 'page2',
            name: 'page2',
            pageBuilder: (_, __) => const MaterialPage(name: 'page2', child: Page2()),
          ),
        ],
      ),
    ],
  );

  ref.onDispose(router.dispose);
  return router;
}

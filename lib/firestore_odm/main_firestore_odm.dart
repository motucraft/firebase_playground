import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_playground/firebase_options.dart';
import 'package:firebase_playground/firestore_odm/firestore/country.dart';
import 'package:firebase_playground/firestore_odm/widget/city_list.dart';
import 'package:firebase_playground/firestore_odm/widget/country_list.dart';
import 'package:firebase_playground/firestore_odm/widget/country_list_infinite_scroll.dart';
import 'package:firebase_playground/firestore_odm/widget/dialog_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'main_firestore_odm.g.dart';

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

class RootPage extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const RootPage({
    super.key,
    required this.navigationShell,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'home'),
          NavigationDestination(icon: Icon(Icons.format_list_numbered), label: 'infinite'),
        ],
        onDestinationSelected: (index) {
          navigationShell.goBranch(
            index,
            initialLocation: index == navigationShell.currentIndex,
          );
        },
      ),
    );
  }
}

@riverpod
GoRouter routing(RoutingRef ref) {
  final router = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: '/home',
    navigatorKey: ref.watch(rootNavigationKeyProvider),
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (_, __, navigationShell) {
          return RootPage(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            navigatorKey: ref.watch(homeNavigationKeyProvider),
            routes: [
              GoRoute(
                path: '/home',
                pageBuilder: (_, __) => const MaterialPage(child: CountryList()),
                routes: [
                  GoRoute(
                    path: 'cities/:id',
                    name: 'cities',
                    pageBuilder: (_, state) {
                      final countryId = state.pathParameters['id'];
                      if (countryId?.isNotEmpty != true) {
                        throw UnsupportedError('Unsupported id.');
                      }

                      return MaterialPage(child: CityList(countryId: countryId!));
                    },
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: ref.watch(infiniteNavigationKeyProvider),
            routes: [
              GoRoute(
                path: '/infinite',
                pageBuilder: (_, __) => const MaterialPage(child: CountryListInfiniteScroll()),
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        parentNavigatorKey: ref.watch(rootNavigationKeyProvider),
        path: '/edit-dialog',
        name: 'editDialog',
        pageBuilder: (_, state) {
          final extra = state.extra;
          if (extra is! Country) {
            throw UnsupportedError('Unsupported extra. extra=$extra');
          }

          return DialogPage(builder: (context) => EditDialog(country: extra));
        },
      ),
      GoRoute(
        parentNavigatorKey: ref.watch(rootNavigationKeyProvider),
        path: '/insert-dialog',
        pageBuilder: (_, __) {
          return DialogPage(builder: (context) => const InsertDialog());
        },
      ),
      GoRoute(
        parentNavigatorKey: ref.watch(rootNavigationKeyProvider),
        path: '/delete-dialog',
        pageBuilder: (_, state) {
          final extra = state.extra;
          if (extra is! Country) {
            throw UnsupportedError('Unsupported extra. extra=$extra');
          }
          return DialogPage(builder: (context) => DeleteDialog(country: extra));
        },
      ),
    ],
  );

  ref.onDispose(router.dispose);
  return router;
}

@riverpod
GlobalKey<NavigatorState> rootNavigationKey(RootNavigationKeyRef ref) => GlobalKey<NavigatorState>(debugLabel: 'root');

@riverpod
GlobalKey<NavigatorState> homeNavigationKey(HomeNavigationKeyRef ref) => GlobalKey<NavigatorState>(debugLabel: 'home');

@riverpod
GlobalKey<NavigatorState> infiniteNavigationKey(InfiniteNavigationKeyRef ref) =>
    GlobalKey<NavigatorState>(debugLabel: 'infinite');

import 'package:test_practice/feautres/favorite/view/favorite_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:test_practice/feautres/home/view/home.dart';

enum AppRoute { home, favorites }

final GoRouter _router = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      name: AppRoute.home.name,
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'favorites',
          name: AppRoute.favorites.name,
          builder: (BuildContext context, GoRouterState state) {
            return const FavoritesView();
          },
        ),
      ],
    ),
  ],
);

final goRouterProvider = Provider<GoRouter>(
  (final ref) {
    return _router;
  },
);

import 'package:custom_widgets/feautres/animation/view/hero/hero_animation.dart';
import 'package:custom_widgets/feautres/dashboard/view/dashboard_view.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

enum AppRoute { dashboard, hero_demo }

final GoRouter _router = GoRouter(
  initialLocation: '/dashboard',
  routes: <RouteBase>[
    GoRoute(
      path: '/dashboard',
      name: AppRoute.dashboard.name,
      builder: (BuildContext context, GoRouterState state) {
        return const DashboardView();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'hero_demo',
          name: AppRoute.hero_demo.name,
          builder: (BuildContext context, GoRouterState state) {
            return const HeroAnimation();
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

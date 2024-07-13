import 'package:custom_widgets/feautres/dashboard/view/dashboard_view.dart';
import 'package:custom_widgets/feautres/forecast/view/widgets/weather_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

enum AppRoute { dashboard, weatherDetail }

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
          path: 'details',
          name: AppRoute.weatherDetail.name,
          builder: (BuildContext context, GoRouterState state) {
            return const WeatherDetailScreen();
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

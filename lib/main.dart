import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/routing/routing.dart';

void main() {
  runApp(const ProviderScope(child: TestingApp()));
}

class TestingApp extends ConsumerWidget {
  const TestingApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.read(goRouterProvider);
    return MaterialApp.router(
      title: 'TestingApp',
      routerConfig: goRouter,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff5936B4)),
        useMaterial3: true,
      ),
    );
  }
}

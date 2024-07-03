import 'package:flutter/material.dart';

import 'feautres/forecast/view/forecast_detail_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Widgets Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff5936B4)),
        useMaterial3: true,
      ),
      home: const ForecastDetailView(),
    );
  }
}

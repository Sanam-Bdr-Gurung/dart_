import 'package:flutter/material.dart';

class WeatherDetailScreen extends StatelessWidget {
  const WeatherDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'More Detailed View',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 52, fontWeight: FontWeight.w800),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class WeatherLibrary extends StatelessWidget {
  const WeatherLibrary({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Row(
                children: [
                  Expanded(child: Tab(icon: Icon(Icons.thunderstorm))),
                ],
              ),
              Row(
                children: [
                  Expanded(child: Tab(icon: Icon(Icons.tornado))),
                ],
              ),
              Row(
                children: [
                  Expanded(child: Tab(icon: Icon(Icons.sunny))),
                ],
              ),
            ],
          ),
          title: const Text('Weather Library'),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Thunder Storm Regions')),
            Center(child: Text('Active Tornado Regions')),
            Center(child: Text('Sunny Areas')),
          ],
        ),
      ),
    );
  }
}

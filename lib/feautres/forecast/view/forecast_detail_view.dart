import 'package:custom_widgets/core/enums/enums.dart';
import 'package:custom_widgets/feautres/forecast/view/widgets/weather_card.dart';
import 'package:flutter/material.dart';

class ForecastDetailView extends StatelessWidget {
  const ForecastDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 32,
            ),
            WeatherCard(
              currentTemp: 12,
              maxTemp: 24,
              minTemp: 0,
              location: 'kathmandu',
              weatherType: WeatherType.cloudyRain,
            ),
            SizedBox(
              height: 32,
            ),
            WeatherCard(
              currentTemp: 18,
              maxTemp: 24,
              minTemp: 0,
              location: 'new york',
              weatherType: WeatherType.tornado,
            ),
            SizedBox(
              height: 32,
            ),
            WeatherCard(
              currentTemp: 18,
              maxTemp: 24,
              minTemp: 0,
              location: 'London',
              weatherType: WeatherType.cloudyRain,
            ),
          ],
        ),
      ),
    );
  }
}

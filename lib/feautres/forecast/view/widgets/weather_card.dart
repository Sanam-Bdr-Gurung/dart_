import 'package:custom_widgets/core/enums/enums.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/assets_constant.dart';

class WeatherCard extends StatelessWidget {
  const WeatherCard({
    super.key,
    required this.currentTemp,
    required this.maxTemp,
    required this.minTemp,
    required this.location,
    required this.weatherType,
  });

  final int currentTemp;
  final int maxTemp;
  final int minTemp;
  final String location;
  final WeatherType weatherType;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 186,
          width: 342,
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage(Assets.cardBase)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  currentTemp.toString(),
                  style: GoogleFonts.roboto(
                    fontSize: 64,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                '$maxTemp° L: $minTemp H',
                style: GoogleFonts.roboto(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    location.toString(),
                    style: GoogleFonts.roboto(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    weatherType.name,
                    style: GoogleFonts.roboto(
                      fontSize: 13,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Positioned(
          right: 32,
          top: -20,
          child: Image.asset(
            weatherType == WeatherType.cloudyRain
                ? Assets.cloudyRain
                : Assets.tornado,
            height: 160,
            width: 160,
          ),
        )
      ],
    );
  }
}

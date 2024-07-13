import 'package:custom_widgets/feautres/animation/view/heavy_animation/lottie_example.dart';
import 'package:custom_widgets/feautres/dashboard/logic/dashboard_view_model.dart';
import 'package:custom_widgets/feautres/forecast/view/forecast_detail_view.dart';
import 'package:custom_widgets/feautres/library/view/library_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Consumer(
      builder: (context, ref, child) {
        /// Watch for the state changes
        final currentIndex = ref.watch(bottomNavIndexProvider);
        return IndexedStack(
          index: currentIndex,
          children: const [
            WeatherLibrary(),
            ForecastDetailView(),
            LottieExample(),
          ],
        );
      },
    ), bottomNavigationBar: Consumer(
      builder: (context, ref, child) {
        final currentIndex = ref.watch(bottomNavIndexProvider);
        return BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: 'Profile',
            ),
          ],
          currentIndex: currentIndex,
          onTap: (value) {
            /// Read The State Handler Class and it's functions
            ref.read(bottomNavIndexProvider.notifier).update((state) => value);
          },
        );
      },
    ));
  }
}

import 'package:custom_widgets/feautres/animation/view/explicit/explicit.dart';
import 'package:custom_widgets/feautres/animation/view/hero/hero_animation.dart';
import 'package:custom_widgets/feautres/animation/view/implicit/implicit_view.dart';
import 'package:flutter/material.dart';

class WeatherLibrary extends StatelessWidget {
  const WeatherLibrary({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Animations'),
          bottom: const TabBar(
            tabs: [
              Row(
                children: [
                  Expanded(child: Tab(icon: Text('Hero'))),
                ],
              ),
              Row(
                children: [
                  Expanded(child: Tab(icon: Text('Implicit'))),
                ],
              ),
              Row(
                children: [
                  Expanded(child: Tab(icon: Text('Explicit'))),
                ],
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            HeroAnimation(),
            AnimatedContainerDemo(),
            ExplicitAnimation(),
          ],
        ),
      ),
    );
  }
}

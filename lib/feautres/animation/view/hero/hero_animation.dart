import 'package:custom_widgets/feautres/animation/view/hero/photo_hero.dart';
import 'package:flutter/material.dart';

import 'package:flutter/scheduler.dart' show timeDilation;

class HeroAnimation extends StatelessWidget {
  const HeroAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    timeDilation = 2.0; // 1.0 means normal animation speed.

    return Center(
      child: PhotoHero(
        width: 180.0,
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute<void>(builder: (context) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('Some Page'),
              ),
              body: Container(
                color: const Color(0xff5936B4),
                padding: const EdgeInsets.all(16),
                alignment: Alignment.topLeft,
                child: PhotoHero(
                  width: 100.0,
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            );
          }));
        },
      ),
    );
  }
}

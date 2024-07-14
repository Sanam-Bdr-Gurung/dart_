import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:test_practice/core/core.dart';
import 'package:test_practice/feautres/favorite/logic/favoirtes_model.dart';
import 'package:test_practice/feautres/home/view/widget/item_tile.dart';

class HomePage extends ConsumerWidget {
  static String routeName = '/';

  const HomePage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final favoritesList = ref.watch(favViewModelProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Testing Sample'),
        actions: <Widget>[
          TextButton.icon(
            onPressed: () {
              context.goNamed(AppRoute.favorites.name);
            },
            icon: Icon(
              favoritesList.isNotEmpty ? Icons.favorite : Icons.favorite_border,
              color: favoritesList.isNotEmpty ? Colors.red : null,
            ),
            label: const Text('Favorites'),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 100,
        cacheExtent: 20.0,
        padding: const EdgeInsets.symmetric(vertical: 16),
        itemBuilder: (context, index) => ItemTile(index),
      ),
    );
  }
}

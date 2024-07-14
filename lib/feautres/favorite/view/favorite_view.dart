import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_practice/feautres/favorite/logic/favoirtes_model.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({super.key});

  static String routeName = 'favorites_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
      ),
      body: Consumer(
        builder: (context, ref, child) {
          final favItems = ref.watch(favViewModelProvider);
          print('check fav items $favItems');
          return ListView.builder(
            itemCount: favItems.length,
            padding: const EdgeInsets.symmetric(vertical: 16),
            itemBuilder: (context, index) => FavoriteItemTile(favItems[index]),
          );
        },
      ),
    );
  }
}

class FavoriteItemTile extends ConsumerWidget {
  const FavoriteItemTile(this.itemNo, {super.key});

  final int itemNo;

  @override
  Widget build(BuildContext context, ref) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.primaries[itemNo % Colors.primaries.length],
        ),
        title: Text(
          'Item $itemNo',
          key: Key('favorites_text_$itemNo'),
        ),
        trailing: IconButton(
          key: Key('remove_icon_$itemNo'),
          icon: const Icon(Icons.close),
          onPressed: () {
            final favViewModel = ref.read(favViewModelProvider.notifier);
            favViewModel.remove(itemNo);
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Removed from favorites.'),
                duration: Duration(seconds: 1),
              ),
            );
          },
        ),
      ),
    );
  }
}

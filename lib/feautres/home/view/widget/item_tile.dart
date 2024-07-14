import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_practice/feautres/favorite/logic/favoirtes_model.dart';

class ItemTile extends ConsumerWidget {
  final int itemNo;

  const ItemTile(this.itemNo, {super.key});

  @override
  Widget build(BuildContext context, ref) {
    final favoritesList = ref.watch(favViewModelProvider);
    final favViewModel = ref.read(favViewModelProvider.notifier);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.primaries[itemNo % Colors.primaries.length],
        ),
        title: Text(
          'Item $itemNo',
          key: Key('text_$itemNo'),
        ),
        trailing: IconButton(
          key: Key('icon_$itemNo'),
          icon: favoritesList.contains(itemNo)
              ? const Icon(
                  Icons.favorite,
                  color: Colors.red,
                )
              : const Icon(Icons.favorite_border),
          onPressed: () {
            !favoritesList.contains(itemNo)
                ? favViewModel.add(itemNo)
                : favViewModel.remove(itemNo);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(favoritesList.contains(itemNo)
                    ? 'Removed from favorites.'
                    : 'Added to favorites.'),
                duration: const Duration(seconds: 1),
              ),
            );
          },
        ),
      ),
    );
  }
}

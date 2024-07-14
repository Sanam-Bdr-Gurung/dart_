import 'package:flutter_riverpod/flutter_riverpod.dart';

/// The [FavoritesViewModel] class holds a list of favorite items saved by the user.
class FavoritesViewModel extends Notifier<List<int>> {
  void add(int itemNo) {
    state = [
      ...state,
      itemNo,
    ];
    print('added $itemNo in fav list -> $state');
  }

  void remove(int itemNo) {
    state = state.where((test) => test != itemNo).toList();
    print('removed $itemNo from fav list -> $state');
  }

  @override
  List<int> build() {
    return [];
  }
}

final favViewModelProvider =
    NotifierProvider<FavoritesViewModel, List<int>>(FavoritesViewModel.new);

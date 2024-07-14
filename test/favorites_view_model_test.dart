import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test/test.dart';
import 'package:test_practice/feautres/favorite/logic/favoirtes_model.dart';

ProviderContainer createContainer({
  ProviderContainer? parent,
  List<Override> overrides = const [],
  List<ProviderObserver>? observers,
}) {
  // Create a ProviderContainer, and optionally allow specifying parameters.
  final container = ProviderContainer(
    parent: parent,
    overrides: overrides,
    observers: observers,
  );

  // When the test ends, dispose the container.
  addTearDown(container.dispose);

  return container;
}

void main() {
  group('Testing App Provider', () {
    test('A new item should be added', () {
      // Create a ProviderContainer for this test.
      // DO NOT share ProviderContainers between tests.
      final container = createContainer();
      final favViewModel = container.read(favViewModelProvider.notifier);
      var number = 35;
      favViewModel.add(number);
      expect(favViewModel.state.contains(number), true);
    });
    test('An item should be removed', () {
      final container = createContainer();
      final favViewModel = container.read(favViewModelProvider.notifier);
      var number = 45;
      favViewModel.add(number);
      expect(favViewModel.state.contains(number), true);
      favViewModel.remove(number);
      expect(favViewModel.state.contains(number), false);
    });
  });
}

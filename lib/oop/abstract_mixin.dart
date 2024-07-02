void main() {
  Guitar guitar = Guitar();
  guitar.play(); // Outputs: Playing the guitar!
  guitar.tune(); // Outputs: Tuning the instrument!
}

///Abstract and mixin
mixin Tuning {
  void tune() {
    print('Tuning the instrument!');
  }
}

abstract class Instrument {
  void play();
}

class Guitar extends Instrument with Tuning {
  void play() {
    print('Playing the guitar!');
  }
}

/// Async i/o
///Future
//
// Future<String> releaseAlbum() async {
//   return 'The new album is out!';
// }
//
// releaseAlbum().then((value) => print(value)); // Outputs: The new album is out!

/// Asyn await
// Future<void> playAlbum() async {
//   String album = await releaseAlbum();
//   print(album); // Outputs: The new album is out!
// }
//
// playAlbum();

/// Stream
// Stream<String> songStream() async* {
//   yield 'Song 1';
//   yield 'Song 2';
//   yield 'Song 3';
// }
//
// songStream().listen((song) => print('Now playing: $song'));
// // Outputs:
// // Now playing: Song 1
// // Now playing: Song 2
// // Now playing: Song 3

/// Error Handling
//
// void playInstrument() {
//   try {
//     throw Exception('The guitar string broke!');
//   } catch (e) {
//     print('Error: $e'); // Outputs: Error: Exception: The guitar string broke!
//   }
// }
//
// playInstrument();
/// Custom Exception
// class InstrumentNotFoundException implements Exception {
//   String cause;
//   InstrumentNotFoundException(this.cause);
// }
//
// void findInstrument() {
//   try {
//     throw InstrumentNotFoundException('The drum kit is missing!');
//   } catch (e) {
//     print('Error: ${e.cause}'); // Outputs: Error: The drum kit is missing!
//   }
// }
//
// findInstrument();

/// Async i/o
void main() {
  releaseAlbum().then((value) => print(value));
  playAlbum();
  songStream().listen((song) => print('Now playing: $song'));
}

///Future
Future<String> releaseAlbum() async {
  return 'The new album is out!';
}

/// Asyn await
Future<void> playAlbum() async {
  String album = await releaseAlbum();
  print(album); // Outputs: The new album is out!
}



/// Stream
Stream<String> songStream() async* {
  yield 'Song 1';
  yield 'Song 2';
  yield 'Song 3';
}

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

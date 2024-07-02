/// Error Handling
void main() {
  playInstrument();
  findInstrument();
}

void playInstrument() {
  try {
    throw Exception('The guitar string broke!');
  } catch (e) {
    print('Error: $e'); // Outputs: Error: Exception: The guitar string broke!
  }
}

/// Custom Exception
class InstrumentNotFoundException implements Exception {
  String cause;

  InstrumentNotFoundException(this.cause);
}

void findInstrument() {
  try {
    throw InstrumentNotFoundException('The drum kit is missing!');
  } on InstrumentNotFoundException catch (e) {
    print('Error: ${e.cause}'); // Outputs: Error: The drum kit is missing!
  } catch (e) {
    print('Error: $e'); // Outputs: Error: General Exception
  }
}

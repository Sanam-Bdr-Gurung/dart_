void main() {
  ///classes and objects
  Instrument guitar = Instrument('Gibson', 'Guitar');
  guitar.play(); // Outputs: Guitar is playing!

  ///inheritance
  ElectricGuitar electricGuitar = ElectricGuitar('Fender', 'Guitar');
  electricGuitar.play(); // Outputs: Playing music!
  electricGuitar.distort(); // Outputs: Playing with distortion!
}

class Instrument {
  String name;
  String type;

  Instrument(this.name, this.type);

  void play() {
    print('$name is playing!');
  }
}

class ElectricGuitar extends Instrument {
  ElectricGuitar(super.name, super.type);

  void distort() {
    print('Playing with distortion!');
  }
}

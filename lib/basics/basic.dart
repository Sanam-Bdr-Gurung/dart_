void main() {
  /// Basic syntax
  String bandName = 'The Rockstars'; // Name of the band
  int numberOfSongs = 10; // Number of songs in the album
  double albumDuration = 42.5; // Total duration of the album in minutes
  bool isRockstarOnTour = true; // Is the band on tour?

  checkTourStatus(isRockstarOnTour);
  playSong('Snow');
}

/// Function
String playSong(String songName) {
  return 'Playing the song $songName';
}

/// Control Flow
void checkTourStatus(bool isOnTour) {
  if (isOnTour) {
    print('The band is currently on tour!');
  } else {
    print('The band is taking a break.');
  }
}

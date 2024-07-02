void main() {
  List<String> myFavBandInList = [
    'Periphery',
    '1974 Ad',
    'Rockheads',
  ];
  print(myFavBandInList);
  Set<String> myFavBandInSet = {
    'Periphery',
    '1974 Ad',
    'Rockheads',
    'Periphery',
  };
  print(myFavBandInSet);
  Map<String, String> bandGigLocation = {
    "'Rockheads'": "Purple Haze",
    "1974 Ad": "Hilton"
  };
  print(bandGigLocation);
}

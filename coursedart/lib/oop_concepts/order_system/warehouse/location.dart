

enum LoctionType { warhouse, store, shelf, track, popUpStore }

class Location {
  final String id;
  final String city;
  final String name;
  final String fullAddress;
  final double latitude;
  final double longitude;
  final String countryCode;
  final LoctionType loctionType;

  Location({
    required this.city,
    required this.id,
    required this.name,
    required this.fullAddress,
    required this.latitude,
    required this.longitude,
    required this.countryCode,
    required this.loctionType,
  });

  @override
  String toString() {
 
    return 'Id :$id  City: $city Name: $name FullAddress :$fullAddress  Longitude $longitude  Latitude:  $latitude  CountryCode: $countryCode  LoctionType: $loctionType';
  }
}


enum LoctionType { warhouse, store, shelf, track, popUpStore }

abstract class Location {
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
}

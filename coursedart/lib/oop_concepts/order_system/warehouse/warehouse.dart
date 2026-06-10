import 'package:coursedart/oop_concepts/order_system/warehouse/location.dart';

class Warehouse extends Location {
  final double storageCapacity;

  Warehouse({
    required super.city,
    required this.storageCapacity,
    required super.id,
    required super.name,
    required super.fullAddress,
    required super.latitude,
    required super.longitude,
    required super.countryCode,
    required super.loctionType,
  });
}

import '../inventory/inventories.dart';
import 'location.dart';

class Store extends Location {
 String? openingHours;
  final List<Inventory>? inventory;
  bool? hasClickAndCollect;
  Store({
required super.city,
this.hasClickAndCollect,
this.openingHours,
     this.inventory,
    required super.id,
    required super.name,
    required super.fullAddress,
    required super.latitude,
    required super.longitude,
    required super.countryCode,
    required super.loctionType,
  });
}

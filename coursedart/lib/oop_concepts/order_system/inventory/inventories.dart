import 'dart:js_interop';

import 'package:coursedart/oop_concepts/order_system/transaction/invatory_transaction.dart';

import '../warehouse/location.dart';
import 'inventory_item.dart';

//
enum InventoryStatus { active, counting, closed, frozen }

 final class Inventory {
  final Location location;
  DateTime? lastPhysicalCountDate;
  InvatoryTransaction? invatoryTransaction;
  List<InventoryItem> items;
  String? countedBy;
  InventoryStatus? inventoryStatus;

   Inventory({
    required this.location,
    this.lastPhysicalCountDate,
    this.invatoryTransaction,
    this.items = const [],
    this.inventoryStatus,
    this.countedBy,
  });

  factory Inventory.fromJson(Map<String, dynamic> json) {
    return Inventory(
      location: json['location'] as Location,
      lastPhysicalCountDate: json['lastPhysicalCountDate'],

      countedBy: json['countedBy'],
      invatoryTransaction: json['invatoryTransaction'],
    );
  }

  Inventory copyWith({
    Location? location,
    DateTime? lastPhysicalCountDate,
    String? countedBy,
    InventoryStatus? inventoryStatus,
    InvatoryTransaction? invatoryTransaction,
  }) {
    return Inventory(
      location: location ?? this.location,
      lastPhysicalCountDate:
          lastPhysicalCountDate ?? this.lastPhysicalCountDate,
      inventoryStatus: inventoryStatus ?? this.inventoryStatus,
      countedBy: countedBy ?? this.countedBy,
      invatoryTransaction: invatoryTransaction ?? this.invatoryTransaction,
    );
  }

  void addItem(List<InventoryItem> item) {
    items.addAll(item);
  }

  void updateStock(int quantitySold, String categoryID, String productName) {
   final cv= items.first.stockDetails.available;
      items[0].runtimeType.toExternalReference;
   
    if (items.first.stockDetails.available >= quantitySold) {
      int soldCount = items.first.stockDetails.available - quantitySold;
      for (
        var i = 0;
        i < (items.length) && (items.first.stockDetails.available > soldCount);
        i++
      ) {
        if (items[i].product.productName == productName) {
          items.removeAt(i);

          items[i].stockDetails.available -= 1;
        }
      }

      print("Stock updated. Remaining stock: ${items.length}");
    } else {
      print("Not enough stock available!");
    }
  }

  void showInventoryProduct() {
    items.map((pro) => pro.product.showDetails()).toList();
  }
}

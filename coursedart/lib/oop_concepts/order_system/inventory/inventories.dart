import 'package:coursedart/oop_concepts/order_system/transaction/invatory_transaction.dart';

import '../warehouse/location.dart';
import 'inventory_item.dart';

//
enum InventoryStatus { active, counting, closed, frozen }

 class Inventory {
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
    this.inventoryStatus=InventoryStatus.active,
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

  void updateStock(int quantitySold, String categoryID, String productSku) {
    try {
      final itemSold = items.singleWhere((items) => items.skuId == productSku);

      if (itemSold.stockDetails.available < quantitySold) {
        throw ArgumentError('Error Quantity Invalid');
      }

      final indexItem = items.indexOf(itemSold);
      if (indexItem == -1) throw IndexError.withLength(indexItem, items.length);

      final quantityAvaliable = items[indexItem].stockDetails.available;
      items[indexItem].stockDetails = items[indexItem].stockDetails.copyWith(
        available: quantityAvaliable - quantitySold,
      );
      items[indexItem].stockDetails.available
       =
          quantityAvaliable - quantitySold;
      print(
        'Quantity After Sold ${items[indexItem].stockDetails.available}',
      );
    } catch (e) {
      print(e.toString());
    }
  }

  void showInventoryProduct() {
    items.map((pro) => pro.showItemDetails()).toList();
  }
}


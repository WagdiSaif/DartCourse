
import 'package:coursedart/oop_concepts/order_system/products/product_variant.dart';

import 'stock_details.dart';

class InventoryItem {
  final String  productVariantId;
  StockDetails stockDetails;

  final String skuId;
  final String batchNumber;
  final DateTime dateTime;
  InventoryItem({
    required this.productVariantId,

    required this.skuId,
    required this.batchNumber,
    required this.dateTime,
    required this.stockDetails,
  });

  void showItemDetails() {
    print('*' * 50);
    print('Inventory Items');
    print(
      'skuId : $skuId  quantity :${stockDetails.available}  batchNumber :$batchNumber  dateTime:$dateTime stockDetails :${stockDetails.toString()}',
    );


  }

  InventoryItem copyWith({
    String? productVariantId,
    StockDetails? stockDetails,

    String? skuId,
    String? batchNumber,
    DateTime? dateTime,
  }) {
    return InventoryItem(
      productVariantId: productVariantId ?? this.productVariantId,
 
      skuId: skuId ?? this.skuId,
      batchNumber: batchNumber ?? this.batchNumber,
      dateTime: dateTime ?? this.dateTime,
      stockDetails: stockDetails ?? this.stockDetails,
    );
  }
}

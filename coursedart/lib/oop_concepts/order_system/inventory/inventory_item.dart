import 'package:coursedart/oop_concepts/order_system/products/product.dart';

import 'stock_details.dart';

class InventoryItem {
  final Product product;
  final StockDetails stockDetails;
  final int quantity;
  final String skuId;
  final String batchNumber;
  final DateTime dateTime;
  InventoryItem({
    required this.product,
    required this.quantity,
    required this.skuId,
    required this.batchNumber,
    required this.dateTime,
    required this.stockDetails,
  });

  void showItemDetails() {
    print('*' * 50);
    print('Inventory Items');
    print(
      'skuId : $skuId  quantity :$quantity  batchNumber :$batchNumber  dateTime:$dateTime stockDetails :${stockDetails.toString()}',
    );

    product.showDetails();
  }
}

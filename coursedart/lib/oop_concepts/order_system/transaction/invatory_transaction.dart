
enum InventoryTransactionType {
  inbound,
  outbound,
  returnIn,
  adjustment,
  transfer,
  damaged,
  expired,
  allocated,
}

final class InvatoryTransaction {
  final String skuId;
  final String inventoryItemId;
  final String quantity;
  final DateTime createdAt;
  final int quantityChanged;
  final String loctionId;
  final int previousQuantity;
  final int newQuantity;
  final String warhouseId;

  final InventoryTransactionType type;

  InvatoryTransaction({
    required this.skuId,
    required this.inventoryItemId,
    required this.quantity,
    required this.createdAt,
    required this.quantityChanged,
    required this.loctionId,
    required this.previousQuantity,
    required this.newQuantity,
    required this.warhouseId,
    required this.type,
  });

  void createTransaction(){

    
  }
}

class StockDetails {
  final int reserved;
  int available;
  final int quantity;
  final int damaged;

  StockDetails({
    required this.reserved,
    required this.available,
    required this.quantity,
    required this.damaged,
  });
  @override
  String toString() {
    return 'quantity :$quantity reserved :$reserved available: $available  damaged: $damaged ';
  }
}

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

  StockDetails copyWith({
    int? reserved,
    int? available,
    int? quantity,
    int? damaged,
  }) {
    return StockDetails(
      reserved: reserved ?? this.reserved,
      available: available ?? this.available,
      quantity: quantity ?? this.quantity,
      damaged: damaged ?? this.damaged,
    );
  }
}


mixin Inventory {
  int stockQuantity = 0;

  void updateStock(int quantitySold) {
    if (stockQuantity >= quantitySold) {
      stockQuantity -= quantitySold;
      print("Stock updated. Remaining stock: $stockQuantity");
    } else {
      print("Not enough stock available!");
    }
  }
}

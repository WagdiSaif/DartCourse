import 'Book.dart';
import 'helpers.dart';
import 'inventories.dart';

class PrintedBook extends Book with Discount, Inventory {
  String publisher;
  int pageCount;

  // Corrected constructor
  PrintedBook(int bookId, String title, String author, double price,
      this.publisher, int initialStock, this.pageCount)
      : super(bookId, title, author, price) {
    stockQuantity = initialStock; // Initialize stock using Inventory mixin
  }

  void makeUpdateStock(int quantitySold) {
    updateStock(quantitySold);
  }

  @override
  void showBookDetails() {
    print("Printed Book: Publisher: $publisher, Pages: $pageCount");
    super.showBookDetails();
    print("Stock Quantity: $stockQuantity");
  }

  // Implementing mixin method to apply discount
  @override
  void applyDiscount(double discountPercentage) {
    double discountedPrice = calculateDiscount(price, discountPercentage);
    print("Discounted Price: $discountedPrice");
  }
}

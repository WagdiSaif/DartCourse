import 'book.dart';

class PrintedBook extends Book {
  String publisher;
  int pageCount;

  PrintedBook({
    required super.bookId,
    required super.title,
    required super.author,
    required super.price,
    required super.category,

    required super.productId,
    required super.productName,
    required this.publisher,

    required this.pageCount,
    required super.description,
        required super.productVariant,
  });

  @override
  void showBookDetails() {
    print('*' * 50);
    print(
      "Printed Book: Publisher: ${this.publisher}, Pages: ${this.pageCount}",
    );
    super.showBookDetails();
  }

  @override
  void applyDiscount(double discountPercentage) {
    double discountedPrice = calculateDiscount(price, discountPercentage);
    print("Discounted Price: $discountedPrice");
  }

  @override
  void showDetails() {
    print('Product ID is ${this.productId} productName is ${this.productName}');
  }
}

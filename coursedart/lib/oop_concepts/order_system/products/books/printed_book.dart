import 'book.dart';

class PrintedBook extends Book {
  String publisher;
  int pageCount;

  PrintedBook({

    required super.bookId,
    required super.title,
    required super.author,
    required super.basePrice,
    required super.category,

    required super.productId,
    required super.productName,
    required this.publisher,

    required this.pageCount,
    required super.description,

  });

  @override
  void showBookDetails() {
    print('*' * 50);
    print(
      "Printed Book: Publisher: $publisher, Pages: $pageCount",
    );
    super.showBookDetails();
  }

  @override
  void applyDiscount(double discountPercentage) {
    double discountedPrice = calculateDiscount(basePrice, discountPercentage);
    print("Discounted Price: $discountedPrice");
  }

  @override
  void showDetails() {
    print('Product ID is $productId productName is $productName');
  }
}

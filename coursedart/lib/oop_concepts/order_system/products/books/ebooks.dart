import 'package:coursedart/oop_concepts/order_system/products/categories.dart';

import 'book.dart';


class EBook extends Book {
  String fileFormat;
  double fileSizeMB;

  EBook({   required super.description,
    required super.bookId,
    required super.title,
    required super.author,
    required super.price,
    required super.category,
    required super.productId,
    required super.productName,
    required this.fileFormat,
    required super.productVariant,

    required this.fileSizeMB,
  });

  @override
  void showBookDetails() {
    print('*' * 50);
    print("E-Book: Format: $fileFormat, Size: ${fileSizeMB}MB");
    super.showBookDetails();
    print(
      " Book title: $title by $author, title: $title, author: $author, Price: $price",
    );
  }

  // Implementing mixin method to apply discount
  @override
  void applyDiscount(double discountPercentage) {
    double discountedPrice = calculateDiscount(price, discountPercentage);
    print("Discounted Price: \$$discountedPrice");
  }

  @override
  void showDetails() {
    print('Product ID is ${this.productId} productName is ${this.productName}');
  }
}

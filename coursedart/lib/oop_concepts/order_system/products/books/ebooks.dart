

import 'book.dart';


class EBook extends Book {
  String fileFormat;
  double fileSizeMB;

  EBook({  
    
    
     required super.description,
    required super.bookId,
    required super.title,
    required super.author,
    required super.basePrice,
    required super.category,
    required super.productId,
    required super.productName,
    required this.fileFormat,


    required this.fileSizeMB,

  });

  @override
  void showBookDetails() {
    print('*' * 50);
    print("E-Book: Format: $fileFormat, Size: ${fileSizeMB}MB");
    super.showBookDetails();
    print(
      " Book title: $title by $author, title: $title, author: $author, Price: $basePrice",
    );
  }

  // Implementing mixin method to apply discount
  @override
  void applyDiscount(double discountPercentage) {
    double discountedPrice = calculateDiscount(basePrice, discountPercentage);
    print("Discounted Price: \$$discountedPrice");
  }

  @override
  void showDetails() {
    print('Product ID is $productId productName is $productName');
  }
  
  
}

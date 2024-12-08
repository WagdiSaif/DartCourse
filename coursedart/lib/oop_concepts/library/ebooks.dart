



import 'Book.dart';
import 'helpers.dart';
class EBook extends Book with Discount {
  String fileFormat;
  double fileSizeMB;

  EBook(int bookId, String title, String author, double price, this.fileFormat, this.fileSizeMB)
      : super(bookId, title, author, price);

  @override
  void showBookDetails() {
    print("E-Book: $title by $author, Format: $fileFormat, Size: ${fileSizeMB}MB, Price: \$$price");
  }

  // Implementing mixin method to apply discount
  @override
  void applyDiscount(double discountPercentage) {
    double discountedPrice = calculateDiscount(price, discountPercentage);
    print("Discounted Price: \$$discountedPrice");
  }
}
abstract class Book {
  int bookId;
  String title;
  String author;
  double price;

  Book(this.bookId, this.title, this.author, this.price);

  void showBookDetails();
  void applyDiscount(double discountPercentage);
}

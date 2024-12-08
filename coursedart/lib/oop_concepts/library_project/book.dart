// ignore: file_names
abstract class Book {
  int bookId;
  String title;
  String author;
  double price;

  Book(this.bookId, this.title, this.author, this.price);

 
  void showBookDetails() {
    print(
        " Book title: $title by $author, title: $title, author: $author, Price: $price");
  
  }
  void applyDiscount(double discountPercentage);
}

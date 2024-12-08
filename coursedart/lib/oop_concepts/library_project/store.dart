import 'Book.dart';
import 'categories.dart';

class Store implements Categories {
  @override
  String categoryName;
  @override
  List<Book> booksInCategory = [];

  Store(this.categoryName);

  @override
  void addBook(Book book) {
    booksInCategory.add(book);
  }

  @override
  void showCategoryBooks() {
    print("Books in store category: $categoryName");
    for (var book in booksInCategory) {
      book.showBookDetails();
    }
  }
}

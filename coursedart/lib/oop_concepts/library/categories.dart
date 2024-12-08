
import 'Book.dart';

class Categories {
  final String categoryName;
  List<Book> booksInCategory = []; // Books that belong to this category

  Categories(this.categoryName);

  void addBook(Book book) {
    booksInCategory.add(book);
  }

  void showCategoryBooks() {
    print("Books in category: $categoryName");
    for (var book in booksInCategory) {
      book.showBookDetails();
    }
  }
}


import 'package:coursedart/oop_concepts/library/ebooks.dart';

import 'Book.dart';
import 'printed_book.dart';


void main(List<String> args) {
  // Create Books
    Book ebook = EBook(1, "title", "author", 23, "fileFormat", 23);
    
  Book printedBook1 = PrintedBook(1, "The Dart Programming Language",
      "Author A", 29.99, "Publisher X", 50, 300);
  Book printbook2 = PrintedBook(2, "title", "author", 90, "publisher", 4, 40);

  printedBook1.showBookDetails();
  printedBook1.applyDiscount(10);
}

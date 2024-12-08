import 'package:coursedart/oop_concepts/library_project/ebooks.dart';

import 'Book.dart';
import 'categories.dart';
import 'order.dart';
import 'printed_book.dart';
import 'shipping_details.dart';
import 'store.dart';


void main(List<String> args) {
  // Create Books
 Book printedBook = PrintedBook(1, "The Dart Programming Language", "Author A",29.99, "Publisher X", 300, 50);

 Book ebook = EBook(2, "Learning Flutter", "Author B", 19.99, "PDF", 5.0);

  // Apply discount to books
  printedBook.applyDiscount(10); // Apply 10% discount
  printedBook.applyDiscount(15); // Apply 15% discount

  // Create an Order
  Order order = Order(1001, "Library Order", DateTime.now());
  order.addBookToOrder(printedBook);
  order.addBookToOrder(ebook);

  // Show Order Details
  order.showOrderDetails();

  // Create Categories and Store
  Categories category = Categories("Programming Books");
  category.addBook(printedBook);
  category.addBook(ebook);
  category.showCategoryBooks();

  Store store = Store("E-books");
  store.addBook(ebook);
  store.showCategoryBooks();

  // // Update inventory for printed book
  // printedBook.updateStock(5); // Sell 5 books
  // printedBook.updateStock(60); // Attempt to sell more than available stock

  // Shipping details for order
  ShippingDetails shipping = ShippingDetails(
      1001, "Library Order", DateTime.now(), "123 Main St, City", 5.0);
  shipping.showOrderDetails();
}

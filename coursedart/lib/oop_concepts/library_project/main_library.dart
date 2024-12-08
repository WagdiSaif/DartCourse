

import 'categories.dart';
import 'customer.dart';
import 'ebooks.dart';
import 'order.dart';
import 'printed_book.dart';
import 'shipping_details.dart';
import 'store.dart';

void main(List<String> args) {
  // Create Books
  var printedBook = PrintedBook(1, "The Dart Programming Language", "Author A",
      29.99, "Publisher X", 300, 50);

  printedBook.showBookDetails();
  printedBook.applyDiscount(50); // Apply 50% discount
  var ebook = EBook(2, "Learning Flutter", "Author B", 19.99, "PDF", 5.0);

  ebook.showBookDetails();

  ebook.applyDiscount(15); // Apply 15% discount

  // Create an Order
  Order order = Order(1001, "Book 1", DateTime.now());
  Customer customer = Customer(
    customerId: 1,
    name: "Mohammed Ali",
    email: "MohammedALi@example.com",
    phoneNumber: "123-456-7890",
    address: "123 6th Street",
  );
  order.addOrderDetails(printedBook, customer);
  order.addOrderDetails(ebook, customer);


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
      printedBook.makeUpdateStock(4);

  // // Update     printedBook.makeUpdateStock(4);ipnventory for printed book(5); // Sell 5 books
 
  // Shipping details for order
  var shipping = ShippingDetails(
      1001, "Library Order", DateTime.now(), "123 Main St, City", 5.89);
  shipping.showOrderDetails();
}

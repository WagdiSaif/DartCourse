import 'Book.dart';

class Order {
  final int orderId;
  final String orderName;
  final DateTime orderDate;
  List<Book> books = []; // Relation with Book

  Order(this.orderId, this.orderName, this.orderDate);

  void addBookToOrder(Book book) {
    books.add(book);
  }

  void showOrderDetails() {
    print("Order ID: $orderId, Name: $orderName, Date: $orderDate");
    for (var book in books) {
      book.showBookDetails();
    }
  }
}

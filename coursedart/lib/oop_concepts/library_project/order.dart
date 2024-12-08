import 'Book.dart';
import 'customer.dart';

class Order {
  final int orderId;
  final String orderName;
  final DateTime orderDate;
  final Map<Customer, Book> _orderDetails = {};

  // Relation with Book


  Order(this.orderId, this.orderName, this.orderDate);

  void addOrderDetails(Book book, Customer customer) {
    _orderDetails.addAll({customer: book});
  }

  void showOrderDetails() {
    print("Order ID: $orderId, Name: $orderName, Date: $orderDate");
    _orderDetails.entries.map((e) {
      e.key.showCustomerDetails();
      e.value.showBookDetails();
    }).toList();
  }
}

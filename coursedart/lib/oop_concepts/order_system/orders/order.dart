import 'package:coursedart/oop_concepts/order_system/products/product.dart';

import '../customer.dart';
import 'order_item.dart';

class Order {
  final String orderId;
  final String orderName;
  final DateTime orderDate;
  final int quantity;

  final Map<Customer, List<OrderItem>> _orderDetails = {};

  Order({
    required this.quantity,
    required this.orderId,
    required this.orderName,
    required this.orderDate,
  });

  void addProduct(Customer customer, Product product, int qyt) {
    final orderItem = OrderItem.create(product: product, quantity: quantity);
    _orderDetails.putIfAbsent(customer, () => []).add(orderItem);
  }

  void showOrderDetails() {
    print("Order ID: $orderId, Name: $orderName, Date: $orderDate");
    for (var element in _orderDetails.entries) {
      element.key.showCustomerDetails();
      element.value.map((order) => order.showItemDetails()).toList();
    }
  }
}

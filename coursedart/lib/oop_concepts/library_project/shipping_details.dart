import 'customer.dart';
import 'order.dart';
import 'order_item.dart';

class ShippingDetails extends Order with OrderItem {
  final String shippingAddress;
  final double shippingCost;


  ShippingDetails(int orderId, String orderName, DateTime orderDate,
      this.shippingAddress, this.shippingCost)
      : super(orderId, orderName, orderDate);

  @override
  void showItemDetails() {
    print("Shipping to: $shippingAddress, Shipping Cost: \$$shippingCost");
  }

  @override
  void showOrderDetails() {
    super.showOrderDetails();
    showItemDetails();
  }
}



enum ShappingStatus { Delivered, Intransit, LabelCreated }

class ShippingDetails {
  final String shippingAddress;
  final double shippingCost;
  final String trackingNumber;
  final String carrierName;
  final ShappingStatus shappingStatus;

  // final Order orderDetails;

  ShippingDetails({
    required this.shippingAddress,
    required this.shippingCost,
    required this.trackingNumber,
    required this.carrierName,
    required this.shappingStatus,
    // required this.orderDetails,
  });

  void showShippingDetails() {
    print("Shipping to: $shippingAddress, Shipping Cost: \$$shippingCost");
   // orderDetails.showOrderDetails();
  }
}

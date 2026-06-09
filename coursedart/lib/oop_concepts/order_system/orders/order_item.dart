import '../products/product.dart';

class OrderItem {
  final Product products;
  final int quantity;

  const OrderItem._({required this.products, required this.quantity});

  factory OrderItem.create({required Product product, required int quantity}) {
    return OrderItem._(products: product, quantity: quantity);
  }

  void showItemDetails() {
    print("product is");
   
      products.showDetails();
      
    
  }
}

import 'package:coursedart/oop_concepts/order_system/products/product.dart';

class ProductVariant {
  final String sku;
  final String productVariantId;
  final Product product;
  final String color;
  final double weight;
  final double price;
  final String size;

  const ProductVariant({
    required this.productVariantId,
    required this.product,
    required this.sku,
    required this.color,
    required this.weight,
    required this.price,
    required this.size,
  });

  String get productSku => sku;
}

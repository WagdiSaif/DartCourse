import 'package:coursedart/oop_concepts/order_system/products/categories.dart';
import 'package:coursedart/oop_concepts/order_system/products/product_variant.dart';

abstract class Product {
  String get productId;
  List<ProductVariant> get productVariant;
  String get productName;
  int get initStockQuantity;
  Categories get category;
  String get description;
  void showDetails();
}

import 'package:coursedart/oop_concepts/order_system/products/categories.dart';


  abstract  class Product{
  String get productId;

  String get productName;

  Categories get category;
  String get description;
  double get basePrice;

  void showDetails();

}



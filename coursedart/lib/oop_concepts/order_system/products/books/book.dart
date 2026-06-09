


import 'package:coursedart/oop_concepts/order_system/products/product_variant.dart';

import '../../discount_mixins/discount_mixin.dart';
import '../../discount_mixins/discountmixin.dart';
import '../categories.dart';
import '../product.dart';


abstract class Book with Discount, Discountmixin  implements Product {
  final String bookId;
  final String title;
  final String author;
  final double price;
  @override
  // TODO: implement productVariant
 final List<ProductVariant>  productVariant;
  @override
  final Categories category;
  @override
  final String productId;
  @override
  final String productName;
  @override
  final String description;
  @override
  int initStockQuantity;
  

  Book({

required this.productVariant,
    this.initStockQuantity=0,
       required this.description,
    required this.bookId,
    required this.title,
    required this.author,
    required this.price,
    required this.category,
    required this.productId,
    required this.productName,
  });

  void showBookDetails() {
    print(
      "Product Id :$productId  Produc tName : $productName  Book title: $title by $author, title: $title, author: $author, Price: $price ,category :${category.toString()}");
  }

  void applyDiscount(double discountPercentage);
}

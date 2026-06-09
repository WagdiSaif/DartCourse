

class ProductVariant {
const  ProductVariant._({

    required String sku,
    required String color,
    required double weight,
    required double size,
  });

  static ProductVariant addProductVariant({    required String sku,
    required String color,
    required double weight,
    required double size,}){


    return  ProductVariant._(sku: sku, color: color, weight: weight, size: size);
  }
}

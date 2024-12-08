mixin Discount {

  double calculateDiscount(double price, double discountPercentage) {
    return price - (price * discountPercentage / 100);
  }


}

mixin Discountmixin {
  double calculateDiscount(double price, double discountPercentage) {
    return price * (1 - discountPercentage / 100);
  }
}

class Categories {
  final String categoryName;
  final String categoryID;
  

  Categories({required this.categoryName, required this.categoryID});

  @override
  String toString() {
    return 'Category Name is $categoryName Category ID $categoryID';
  }

  void showCategory() {
    print('*' * 50);
    print(toString());
  }
}

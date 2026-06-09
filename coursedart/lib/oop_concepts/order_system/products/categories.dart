class Categories {
  final String categoryName;
  final String categoryID;
  

  Categories({required this.categoryName, required this.categoryID});

  @override
  String toString() {
    return 'Category Name is ${this.categoryName} Category ID ${this.categoryID}';
  }

  void showCategory() {
    print('*' * 50);
    print(toString());
  }
}

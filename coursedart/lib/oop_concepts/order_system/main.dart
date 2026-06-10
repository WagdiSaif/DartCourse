import 'package:coursedart/oop_concepts/order_system/warehouse/location.dart';

import 'inventory/inventories.dart';
import 'inventory/inventory_item.dart';
import 'inventory/stock_details.dart';
import 'orders/shipping_details.dart';
import 'products/categories.dart';
import 'customer.dart';
import 'products/books/ebooks.dart';
import 'orders/order.dart';

import 'products/books/printed_book.dart';

import 'products/product_variant.dart';
import 'warehouse/store.dart';

class OrderSystem {}

void main(List<String> args) {
  //Creaate Store

  final store1 = Store(
    city: 'Riyadh',
    id: '1',
    name: 'Book-Markting',
    fullAddress: 'Riyadh-Computer-Street',
    latitude: 21.2322332,
    longitude: 23.12343556,
    countryCode: '+966',
    loctionType: LoctionType.store,
  );
  //Create Inventory for That Store
  var inventory1 = Inventory(location: store1);

  //Create  Product Categories
  final category1 = Categories(categoryName: 'Book', categoryID: '12');

  //Create  Product Categories

  // Create Product(Book)
  var printedBook = PrintedBook(
    description: '',
    bookId: '234',
    title: "The Dart Programming Language",
    author: "Author A",
    basePrice: 29.99,
    publisher: "Publisher X",
    pageCount: 300,
    category: category1,
    productId: '1',
    productName: 'Printed Book',
  );

  final productVariant = ProductVariant(
    productVariantId: '4WQ',
    sku: 'book-12',
    color: 'RED',
    weight: 32,
    size: 'x-large',
    price: 44.3,
    product: printedBook,
  );

  // printedBook.showBookDetails();
  // printedBook.applyDiscount(50);
  var ebook1 = EBook(
    description: '',
    bookId: '343',
    title: "Learning Flutter",
    author: "Author B",
    basePrice: 19.99,
    fileFormat: "PDF",
    fileSizeMB: 5.0,
    category: category1,
    productId: '2',
    productName: 'EBook',
  );

  ebook1.showBookDetails();
  var ebook2 = EBook(
    description: '',
    bookId: '343',
    title: "Learning Flutter",
    author: "Author B",
    basePrice: 19.99,
    fileFormat: "PDF",
    fileSizeMB: 5.0,
    category: category1,
    productId: '3',
    productName: 'EBook',
  );
  ebook2.showBookDetails();
  var ebook3 = EBook(
    description: '',
    bookId: '343',
    title: "Learning Flutter",
    author: "Author B",
    basePrice: 19.99,
    fileFormat: "PDF",
    fileSizeMB: 5.0,
    category: category1,
    productId: '4',
    productName: 'EBook',
  );

  final item1 = InventoryItem(
   
    productVariantId: 'productVariantId',
    skuId: 'Ebook-E-32',
    batchNumber: '32',
    stockDetails: StockDetails(
      reserved: 0,
      available: 22,
      quantity: 22,
      damaged: 2,
    ),
    dateTime: DateTime.now(),
  );
  ebook3.showBookDetails();
  //  ebook.applyDiscount(15); //
  // Create Categories and Store
  //*******************Create Inventory Item********************** */
  final item2 = InventoryItem(
    productVariantId: 'productVariantId',

    skuId: 'E',
    batchNumber: '3',
    dateTime: DateTime.now(),
    stockDetails: StockDetails(
      reserved: 2,
      available: 20,
      quantity: 22,
      damaged: 0,
    ),
  );

  Categories category = Categories(
    categoryID: '213',
    categoryName: 'Programming Books',
  );

  category.showCategory();

  final inventory = Inventory(location: store1);

  inventory.addItem([item2, item1]);
  inventory.updateStock(2, '213', 'book-12');

  // category.addBook(printedBook);
  // category.addBook(ebook);
  // category.showCategoryBooks();

  // store.addBook(ebook);
  // store.showCategoryBooks();
  // printedBook.makeUpdateStock(4);
  //final orderItem=Order<Book>(bookId, title, author, price, fileFormat, fileSizeMB)
  // Create an Order
  Customer customer = Customer(
    bod: '',
    customerId: 1,
    name: "Mohammed Ali",
    email: "MohammedALi@example.com",
    phoneNumber: "123-456-7890",
    address: "123 6th Street",
  );

  final order1 = Order(
    orderId: "1001",
    orderName: "Book 1",
    quantity: 3,
    orderDate: DateTime.timestamp(),
  );

  // final product=Product(productName: '',productId: '');
  // final order1_Item=  OrderItem(product: ebook1, quantity: 3, subTotal: 2);

  //   order1.addOrderDetails(order1_Item, customer);

  //   order1.showOrderDetails();

  final order2 = Order(
    orderId: "1001",
    orderName: "Book 1",
    quantity: 3,
    orderDate: DateTime.timestamp(),
  );

  //   order2.addOrderDetails(order2_Item,customer);
  // order2.showOrderDetails();

  //order.addOrderDetails(orderItem, customer);
  // order.addOrderDetails(ebook, customer);

  // Show Order Details
  print('*' * 50);
  // order.showOrderDetails();

  // // Update
  //

  //Shipping details for order
  var shipping = ShippingDetails(
    shappingStatus: ShappingStatus.labelCreated,
    trackingNumber: '34',
    carrierName: 'Fast-Order',
    shippingAddress: "123 Main St, City",
    shippingCost: 5.89,
  );
  // shipping.showShippingDetails();
}

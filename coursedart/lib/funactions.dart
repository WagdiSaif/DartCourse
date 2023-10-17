import 'dart:convert';
import 'dart:ffi';
import 'dart:io';

double add(double x, double y) {
  return x + y;
}

void fun(int x, int y) {
  print('Value x is ${x * y}');
}

int max(int x, int y) {
  return x > y ? x : y;
}

dynamic max1(dynamic x, dynamic y) {
  return x > y ? x : y;
}

void fullName(String firstName, Function() laterName) {
  print(firstName + " " + laterName());
}

void showData(num ID, String firstName, [String? lastName]) {
  print("ID is ${ID}\t Name is :${firstName}\t liastName   :${lastName}");
}

void showFullData(
    {required int ID, required String firstName, String? lastName}) {
  print("ID is $ID\t Name is: $firstName\t LastName: $lastName");
}

typedef FunTypedef = double Function(
    double x, double y); //Hi here funaction it type is typedef

customDartFunction() {
  //dynamic return
  print("Hi,Welcome to Dart program Language");
}

void main() {
  // print("Enter x values : ");
  // int? x = int.parse(stdin.readLineSync()!);
  // print("Enter y values : ");
  // int? y = int.parse(stdin.readLineSync()!);

  // fun(x, y);
  // print("Max number is  : ${max(x, y)}\n");
  // print("Max number is  : ${max1(23.9, 33.9)}");

  String firstName = "Wagdi";
  String lastName = "Saif";
  fullName(firstName, () {
    return lastName;
  });

  showData(23344, "Wagdi");
  showFullData(ID: 233344, firstName: "Wagdi", lastName: "Saif");
  FunTypedef foradd = add;
  print(foradd(3.3, 9.0));

  double divide(double x, double y) {
    return x / y;
  }

  FunTypedef div = divide;
  print("The Result of Divid is:   ${div(22, 2)}");

  {
    int nu = 90;
  }
}

import 'package:coursedart/oop_concepts/person.dart';

class Employee extends Person {
  final String empDept;

  final double empSalary;

  Employee(
      {required this.empDept,
      required this.empSalary,
      required String name,
      required int id,
      required int age})
      : super(name, id, age);

  void _showDetails() {
    print("Name of the Employee is: $getName");
    print("id of the Employee is: $getId");
    print("age of the Employee is: $getage");

    print("Salary of the Employee is: $empSalary");
    print("Dept. of the Employee is: $empDept");
  }
}

void main() {
  Employee employee = Employee(
      empDept: "en", empSalary: 3443.4, name: "Hassan", id: 23455, age: 25);
  employee._showDetails();
}

import 'package:coursedart/oop_concepts/person.dart';

class Employee extends Person {
  final String emp_dept;

  final double emp_salary;

  Employee(
      {required this.emp_dept,
      required this.emp_salary,
      required String name,
      required int id,
      required int age})
      : super(name, id, age);

  void ShowDetails() {
    print("Name of the Employee is: ${this.getName}");
    print("id of the Employee is: ${this.getId}");
    print("age of the Employee is: ${this.getage}");

    print("Salary of the Employee is: ${this.emp_salary}");
    print("Dept. of the Employee is: ${emp_dept}");
  }
}

void main() {
  Employee employee = Employee(
      emp_dept: "en", emp_salary: 3443.4, name: "Hassan", id: 23455, age: 25);
  employee.ShowDetails();
}

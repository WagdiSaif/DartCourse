// Dart Program in Dart to illustrate
// getters and setters #GFG
class Student {
  late String name;
  late int age;

  String get getStud_name {
    return name;
  }

  void set setStud_name(String name) {
    this.name = name;
  }

  void set setStud_age(int age) {
    if (age <= 0) {
      print("Age should be greater than 5");
    } else {
      this.age = age;
    }
  }

  int get getStud_age {
    return age;
  }
}

void main() {
  Student student = Student();
  student.setStud_name = 'Wagdi';
  student.setStud_age = 25;
  print(student.getStud_age);
  print(student.getStud_name);
}

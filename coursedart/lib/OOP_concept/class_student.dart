// getters and setters
class Student {
  late String name;
  late int age;

  late int id;
  void set setId(int id) {
    this.id = id;
  }

  int get getId {
    return id;
  }

  String get getStud_name {
    return name;
  }

  void set setStud_name(String name) {
    this.name = name;
  }

  void set setStud_age(int age) {
    this.age = age;
  }

  int get getStud_age {
    return age;
  }
}

void main() {
  Student student = Student();
  student.setStud_name = 'Wagdi';
  student.setStud_age = 25;
  student.setId = 2345;
  print("The student age is  ${student.getStud_age}");
  print("The student name is ${student.getStud_name}");
  print("The student id is ${student.getId}");
}

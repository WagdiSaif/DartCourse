// getters and setters
class Student {
  late String name;
  late int age;
  Student();
  late int id;


  set setId(int id) {
    this.id = id;
  }

  int get getId {
    return id;
  }

  String get getStudName {
    return name;
  }

  set setStudname(String name) {
    this.name = name;
  }

  set setStudAge(int age) {
    this.age = age;
  }

  int get getStudAge {
    return age;
  }
}

void main() {
  Student student = Student();
  student.setStudname = 'Wagdi';
  student.setStudAge = 25;
  student.setId = 2345;
  print("The student age is  ${student.getStudAge}");
  print("The student name is ${student.getStudName}");
  print("The student id is ${student.getId}");
}

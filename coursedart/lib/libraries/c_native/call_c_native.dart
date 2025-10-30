import 'dart:ffi';

import 'package:ffi/ffi.dart';

final class Student extends Struct {
  external Pointer<Char> name;
  @Int32()
  external int age;
  //Here Type of Pointer have no notion
  external Pointer<Char> level;
  @Double()
  external double score;
}

// Student* createStudent(const char* name, int age, const char* level, float score) { c native funaction
typedef CreateStudentDartFun =
    Pointer<Student> Function(
      Pointer<Char> name,
      int age,
      Pointer<Char> level,
      double score,
    );
typedef ShowDetailsDartFun = void Function(Pointer<Student>);
typedef ShowDetailsNativeFun = Void Function(Pointer<Student>);
void main(List<String> args) {
  var dylib = DynamicLibrary.open(
    "/coursedart/c_native_code/libnative_student.dylib",
  );
  print("*" * 60);

  dylib = DynamicLibrary.executable();
  final createStudent = dylib
      .lookupFunction<
        Pointer<Student> Function(Pointer<Char>, Int32, Pointer<Char>, Float),
        CreateStudentDartFun
      >("createStudent");
  final nameS = 'Wagdi Saif'.toNativeUtf8();
  final levelS = 'Graduate'.toNativeUtf8();
  final ageS = 26;
  final score = 4.5;

  final student = calloc<Student>().ref;

  student.age = ageS;
  student.score = score;

  student.name = Pointer<Char>.fromAddress(nameS.address);

  student.level = Pointer<Char>.fromAddress(levelS.address);

  Pointer<Student> s = createStudent(
    student.name,
    student.age,
    student.level,
    student.score,
  );
  final studentPtr = s.ref;
  //  read from native

  final dartLevel = studentPtr.level.cast<Utf8>().toDartString();
  final dartName = studentPtr.name.cast<Utf8>().toDartString();
  print('From Dart:');
  print('Name: $dartName');
  print('Age: ${student.age}');
  print('Level: $dartLevel');
  print('Score: ${student.score}\n');
  print("*" * 60);

  print('--- output from C ---');

  final showData = dylib
      .lookupFunction<ShowDetailsNativeFun, ShowDetailsDartFun>(
        "showStudentDetails",
      );
  showData(s);

  malloc.free(s);
}

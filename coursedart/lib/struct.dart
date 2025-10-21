import 'dart:ffi';
// import 'package:ffi/ffi.dart';

 final class Person extends Struct {
  @Int32()
  external int age;

  @Int32()
  external int height;
}

typedef CreatePersonFunc = Int32 Function(Int32, Int32);
typedef CreatePerson = int Function(int, int);

void main() {
  final dylib = DynamicLibrary.open("coursedart/native_c_code/program.dll");
  final sumNumv =
      dylib.lookupFunction<CreatePersonFunc, CreatePerson>('sumNum');
  final person = sumNumv(20, 10);
  print(person);
  // print('Age: ${person.age}, Height: ${person.height}');
}

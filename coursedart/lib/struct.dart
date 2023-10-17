import 'dart:ffi';

class Person extends Struct {
  @Int32()
  external int age;

  @Int32()
  external int height;
}

typedef CreatePersonFunc = Pointer<Person> Function(Int32, Int32);
typedef CreatePerson = Pointer<Person> Function(int, int);

void main() {
  final dylib = DynamicLibrary.open('path/to/native/library');
  final createPersonFunc =
      dylib.lookupFunction<CreatePersonFunc, CreatePerson>('create_person');
  final person = createPersonFunc(25, 180).ref;
  print('Age: ${person.age}, Height: ${person.height}');
}

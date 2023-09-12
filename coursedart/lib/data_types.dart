import 'dart:ffi';

void main(List<String> args) {
  int x = 89;

  double y = 40.0;
  String name = 'Wagdi Saif';

  var city = "Yem";
  var age = 26;

  dynamic Quelf = "En";
//CharThe [Char] type is a native type, and should not be constructed in Dart code.
// It occurs only in native type signatures and as annotation on [Struct] and [Union] fields.
  int Start = 'A'.codeUnitAt(0);
  int end = 'Z'.codeUnitAt(0);

  while (Start <= end) {
    print(String.fromCharCode(Start) + "\t");
    Start++;
  }
  print(name + '\n');
  print(age);
  print(city + '\n');
  print(Quelf + '\n');

  int d = 'fbv'.codeUnitAt(2);
  print(String.fromCharCode(d));

  bool isEng = true;

  num hasdeg = 12.0; //An integer or floating-point number.

  num del = 45255555522222222;
  print(del);

  List cities = ["Sana'a ", "Taiz", "Aden", "Abb"]; //dynamic List

  print(cities);
}

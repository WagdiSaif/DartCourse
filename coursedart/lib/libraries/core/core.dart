/***Built-in types, collections, and other core functionality for every Dart program.

This library is automatically imported. */

void main() {
  //-----------------Numbers and booleans----------------------------/

  int partNumber = 3893;
  double partPrice = 233.4;
  bool visible = true;
  num asFloat = 3434.34; //int or float

  num asInt = 45;
  //--------------------------------------dynamicVariable------------/
  var age = 25; // infers age as an integer
  var value_ = 'Wagdi'; // infers name as a string
  //value_ = 32;  invalid, value can not now hold a int or any datatype only string
  dynamic value = 10;
  value = 'Hello'; // valid, value can now hold a string

  //-----------------------Strings and regular expressions----------/

  String msg = """Hi,Welcome to This is Dart 
  core Library""";

  StringBuffer stringBuffer = StringBuffer(msg);
  stringBuffer.writeln('This Best');
  print(stringBuffer);
  String singleQuotedString = 'This is a single-quoted string.';
  String doubleQuotedString = "This is a single-quoted string.";

  RegExp exp = RegExp(r'\+967\d{9}');
  String textPhoneNumber = "+967775719924";
  bool myPhoneNumber = exp.hasMatch(textPhoneNumber);
  print(myPhoneNumber); // Output: true

  //-------------------------------Collections----------------------/

  Map<String, int> ages = {'Ahmed': 30, 'Ali': 25};
  ages['Sam'] = 35;
  int johnsAge = ages['Ali']!;

  List<int> numbers = [1, 2, 3, 4, 5];
  numbers.add(6);
  int thirdNumber = numbers[2]; // 3

  /******************datetime class as part of dart:core library----------------------- */

  DateTime now = DateTime.now();
  int hour = now.hour;
  print(hour); // Prints the current date in the format: yyyy-MM-dd
  now.minute;

  var myYearofBirth = DateTime(1998, 2, 1);
  var moonLanding = DateTime.parse("1969-07-20");
}

import 'dart:collection';
import 'dart:ffi';

enum names { Ahamed, Ali, Sam, hassan }

void main(List<String> args) {
  int x = 89;

  double y = 40.0;
  String name = 'Wagdi Saif';

  var city = "Yem";
  var age = 26;
  var num1 = num.parse("3");
  var num2 = num.parse("9.3");

  var resultadded = num1 + num2;
  print("result added = ${resultadded}");
  dynamic Quelf = "En";
  String desc = "name" 'is' "Wagdi";
  print("result desc ________________________________ ${desc}");
  String string = 'I do coding';
  String string1 = '$string on My project';
  print(string1);

  String rs = r'This is a raw string';
  print(rs);
//CharThe [Char] type is a native type, and should not be constructed in Dart code.

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

  Runes heart = Runes('\u2665');
//List

  List cities = ["Sana'a ", "Taiz", "Aden", "Abb"]; //dynamic List
  List<String> cities1 = ["Sana'a ", "Taiz", "Aden", "Abb"];
  cities.add('Hagga');
  cities.addAll(['Thamar', 'Marb']);
  bool cityII = cities.any((element) => element == 'Aden'); //search any Element

  List<int> number = [1, 3, 0, 2];
  bool flag = number.every((element) => element > 1);

  Iterable<int> iterableNum = [12, 34, 45, 67, 23, 43];
  iterableNum = number.expand((element) sync* {
    for (var i = 1; i <= element; i++) {
      yield i;
    }
  });

  var rstl = number.where((element) => element.isOdd);

  final numbers = <int>[1, 2, 3, 5, 6, 7];

  numbers.shuffle();
  print(numbers);

  final revers = numbers.reversed;
  print(revers.toList());
  var restWher =
      numbers.firstWhere((element) => element > 3, orElse: (() => 0));
  print(restWher);

  var result = numbers.singleWhere(
    (element) => element > 51,
    orElse: () => 0,
  );
  print(result);

  print(numbers.runtimeType);

  var itretor = numbers.iterator;
  for (; itretor.moveNext();) print(itretor.current);
  int sum =
      numbers.fold(1, (previousValue, element) => previousValue * element);

  print(sum);

  var planets = <String>['Earth', 'Jupiter'];
  var updated = planets.followedBy(['Mars', 'Venus', 'san']);
  print(updated); // (Earth, Jupiter, Mars, Venus,san)

  numbers.insert(0, 20);
  print(numbers); //
  var getRang = numbers.getRange(0, 4);
  print(getRang);
  final skip = numbers.skip(2);
  print(skip);
  print(numbers.take(2));

  print(numbers.reduce((value, element) => value + element));
  numbers.retainWhere((element) => element > 5);
  print(numbers);
  numbers.setAll(1, [30, 40]);
  print(numbers);
  final algh = <String>['two', 'three', 'four'];
  algh.sort((a, b) => a.length.compareTo(b.length));
  print(algh); //

  //map

  Map<String, int> ages = {'Wagdi': 25, 'hamed': 30};
  Map<String, dynamic> person = {'name': 'Wagdi', 'age': 25};
  print(person);

  print(person.entries.length);
  print(person.keys.elementAt(1));

  person.putIfAbsent('ID', () => 1233);

  print(person);
  print("values map are${person.values}");
  print(person.containsKey('age'));
  person.update('lastname', (value) => 'Saif', ifAbsent: () => 'Saif');
  print(person);
  person.forEach((key, value) {
    print("key is ${key} value of key is ${value}");
  });

//set

  Set<int> numbersSet = {1, 2, 3, 4, 5};
  Set<double> temperaturesSet = {98.6, 99.1, 97.9};
  Set<String> fruitsSet = {'apple', 'banana', 'orange'};
  Set<bool> flagsSet = {true, false};
  Set<dynamic> mixedSet = {1, 'two', true};

  print("fruit set is ${fruitsSet}");
  final search = numbersSet.lookup(10);

  print(search);
  final group1 = <String>{'Ahmed', 'Sam', 'Ali'};
  final group2 = <String>{'Sam', 'hamood', 'Saif'};
  final unionSet = group1.intersection(group2);
  print(unionSet); // {Sam}
  Set<String> allGroup = group1.union(group2);

  print(allGroup);

  // Creating a Queue
  Queue<String> queue = new Queue<String>();
  queue.add('1');
  queue.add('2');
  queue.add('3');

  print("This is Queue Strucure     $queue ");

  //enum
  for (names name in names.values) {
    print(name);
  }
  final nam1 = names.Ahamed;
  switch (nam1) {
    case names.Ahamed:
      print("This is  the correct case.");
      break;
    case names.Ali:
      print("This is not the correct case.");
      break;
    case names.Sam:
      print("This is the correct case.");
      break;
    case names.hassan:
      print("This is not the correct case.");
      break;
  }
}

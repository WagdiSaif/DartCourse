import 'dart:collection';

void main() {
  //Map
  /***
HashMap is unordered, the order of iteration is not guaranteed.
LinkedHashMap iterates in key insertion order.
SplayTreeMap iterates the keys in sorted order.
UnmodifiableMapView is a wrapper, an unmodifiable Map view of another Map.
   */
  HashMap<String, int> fruit = HashMap<String, int>();

  fruit['apple'] = 1;
  fruit['banana'] = 2;
  fruit['orange'] = 3;

  print(fruit);

  fruit["Mango"] = 4;
  fruit.addAll({"Anans": 5});
  final newFruit = {"Berray": 6, 'So': 7};

  fruit.addEntries(newFruit.entries);

  print(fruit);

  fruit.forEach((key, value) {
    print('$key \t $value');
  });
//_________________________LinkedHashMap_____________

  LinkedHashMap<String, int> LHM = LinkedHashMap<String, int>();

  LHM['apple'] = 1;
  LHM['banana'] = 2;
  LHM['orange'] = 3;

  print(LHM);

  //_____________________SplayTreeMap___________________________
  SplayTreeMap<String, int> splayTreeMap = SplayTreeMap<String, int>();

  splayTreeMap['apple'] = 1;
  splayTreeMap['banana'] = 2;
  splayTreeMap['orange'] = 3;

  print(splayTreeMap);

  //___________________________UnmodifiableMapView_________________________
  Map<String, int> originalMap = {'apple': 1, 'banana': 2, 'orange': 3};

  UnmodifiableMapView<String, int> unmodifiableMapView =
      UnmodifiableMapView<String, int>(originalMap);

  // Trying to modify the unmodifiable map will throw an exception
  // unmodifiableMapView['apple'] = 5;

  print(unmodifiableMapView);
}

class Person {
 
  final String _name;//private veriable
  final int _id;
  final int _age;

  Person(this._name, this._id, this._age);

  String get getName {
    return _name;
  }

  int get getId {
    return _id;
  }

  int get getage {
    return _age;
  }
}

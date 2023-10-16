class Parent {
  String p;
  Parent(this.p);

  void parentInfo() {
    print("THe parent info is:   ${this.p}");
  }
}

class Child1 extends Parent {
  String ch1;
  Child1(String parentInfo, this.ch1) : super(parentInfo);
  void child1Info() {
    print("THe child1 Info info is:   ${this.ch1}");
  }
}

class Child2 extends Child1 {
  Child2(String parentInfo, String ch2) : super(parentInfo, ch2);
}

//************another example***************************************** */

class Animal {
  String name;

  Animal(this.name);

  void eat() {
    print('$name is eating.');
  }
}

class Mammal extends Animal {
  int age;

  Mammal(String name, this.age) : super(name);

  void run() {
    print('$name is running.');
  }
}

class Human extends Mammal {
  String nationality;

  Human(String name, int age, this.nationality) : super(name, age);

  void speak() {
    print('$name is speaking.');
  }
}

void main() {
  Child2 ch = Child2("Hi,I am parent ", "Hi ,I am child");
  ch.parentInfo();
  ch.child1Info();

  var human = Human('Wagdi', 25, 'Yemani');

  human.eat(); // Output: Wagdi is eating.
  human.run(); // Output: Wagdi is running.
  human.speak(); // Output: Wagdi is speaking.
  print('Age: ${human.age}');
  print('Nationality: ${human.nationality}');
}

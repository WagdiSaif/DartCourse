class Animal {
  String name;

  Animal(this.name);

  void eat() {
    print("$name is eating");
  }
}

class Mammal extends Animal {
  Mammal(String name) : super(name);

  void run() {
    print("$name is running");
  }
}

class Dog extends Animal {
  Dog(String name) : super(name);

  void bark() {
    print("$name is barking");
  }
}

class Cat extends Animal {
  Cat(String name) : super(name);

  void meow() {
    print("$name is meowing");
  }
}

/**************************************************************2*********** */

class Vehicle {
  String brand;

  Vehicle(this.brand);

  void showBrand() {
    print('Brand: $brand');
  }
}

class Car extends Vehicle {
  int price;

  Car(String brand, this.price) : super(brand);

  void showPrice() {
    print('Price: $price');
  }
}

class Bike extends Vehicle {
  int speed;

  Bike(String brand, this.speed) : super(brand);

  void showSpeed() {
    print('Speed: $speed km/h');
  }
}

void main() {
  Dog dog = Dog("Buddy");
  dog.eat();
  dog.bark();

  print('----------------');
  Cat cat = Cat("Whiskers");
  cat.eat();
  cat.meow();

  print('----------------');
  //*********2************* */
  Car myCar = Car('Toyota', 25000);
  myCar.showBrand();
  myCar.showPrice();

  print('----------------');

  Bike myBike = Bike('Honda', 100);
  myBike.showBrand();
  myBike.showSpeed();
}

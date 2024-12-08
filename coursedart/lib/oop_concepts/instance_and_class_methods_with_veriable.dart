class Track {
  static int count = 0; //class Veriable ,shared class Veriable
  void increamentCount() {
    count++;
  }

  void displayCount() {
    print("The Count is :  $count");
  }

  // class method for sum  two parameters
  static void sum(int number1, int number2) {
    // Printing the result
    print('Sum of numbers is ${number2 + number1}');
  }
}

void main() {
  Track track1 = Track();
  Track track2 = Track();
  track1.displayCount();
  print("__________track1______________");
  track1.increamentCount();
  track1.displayCount();
  print("__________track1______________");
  track1.increamentCount();
  track1.displayCount();
  print("_________track2_______________");
  track2.increamentCount();
  track2.displayCount();
  print("__________track2______________");
  track2.increamentCount();
  track2.displayCount();
  print("________________________");

  Track.sum(90, 10);
}

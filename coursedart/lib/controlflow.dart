import 'dart:io';

enum Names { ahmed, ali, sam, hassan }

void main() {
// if ,else if ,else
  print('plz input the number : ');
  int number = int.parse(stdin.readLineSync()!);
  if (number % 2 == 0) {
    print("The user input is Even number is $number");
  } else {
    print("The user input is Odd number is $number");
  }

  //********************* ****************if ,else if ,else*****************************************/
  print('plz input the numbers x,y,z : ');
  int x = int.parse(stdin.readLineSync()!);
  int y = int.parse(stdin.readLineSync()!);
  int z = int.parse(stdin.readLineSync()!);
  if (x >= y && x >= z) {
    print("x Grater than y and z");
  } else if (y >= x && y >= z) {
    print("y Grater than x and z");
  } else {
    print("z Grater than y and x");
  }

/********************************************************************************** */
  double cnum = double.parse(stdin.readLineSync()!);

  if (cnum > 12 && cnum < 20) {
    print("num is  Grater than 12 and less than 20");
  } else if (cnum > 20 && cnum < 30) {
    print("num is  Grater than 20 and less than 30");
  } else {
    print("num is  :$cnum");
  }

/******************************switch************************************************** */
  var nam1 = Names.ahmed;
  switch (nam1) {
    case Names.ahmed:
      print("This is  the correct case.");
      break;
    case Names.ali:
      print("This is not the correct case.");
      break;
    case Names.sam:
      print("This is the correct case.");
      break;
    case Names.hassan:
      print("This is not the correct case.");
      break;
  }
/*************************************************** */

  int start = 1;

  String name = "Wagdi";
  switch (start) {
    case 1:
      {
        switch (name) {
          case 'Wagdi':
            {
              print("I am flutter and dart programer");
            }
        }
      }
      break;
    case 2:
      {
        print(" number  is 2");
      }
      break;
    default:
      {
        print("This is default case");
      }
      break;
  }
}

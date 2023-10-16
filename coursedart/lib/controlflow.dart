import 'dart:io';

enum names { Ahamed, Ali, Sam, hassan }

void main() {
// if ,else if ,else
  print('plz input the number : ');
  int number = int.parse(stdin.readLineSync()!);
  if (number % 2 == 0)
    print("The user input is Even number is $number");
  else
    print("The user input is Odd number is $number");

  //********************* ****************if ,else if ,else*****************************************/
  print('plz input the numbers x,y,z : ');
  int x = int.parse(stdin.readLineSync()!);
  int y = int.parse(stdin.readLineSync()!);
  int z = int.parse(stdin.readLineSync()!);
  if (x >= y && x >= z) {
    print("x Grater than y and z");
  } else if (y >= x && y >= z)
    print("y Grater than x and z");
  else
    print("z Grater than y and x");

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
  var nam1 = names.Ahamed;
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
/*************************************************** */

  int start = 1;

  String Name = "Wagdi";
  switch (start) {
    case 1:
      {
        switch (Name) {
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

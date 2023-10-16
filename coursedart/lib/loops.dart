void main() {
  /*for loop
for… in loop
for each loop
while loop
do-while loop*/

  for (int i = 0; i < 5; i++) {
    print('*');
  }

  for (int i = 0; i <= 5; i++) {
    for (int j = 0; j <= i; j++) {
      print("*");
    }
    print("*");
  }
  final numbers = <int>[1, 2, 3, 4, 5];
  for (int numbr in numbers) {
    print(numbr);
  }
  numbers.forEach((int element) {
    print(element);
  });

/************************************************* */

  int count = 5;
  int i = 1;
  while (i <= count) {
    print('Hi,While loop');
    i++;
  }

  /***************************************************************** */
  i = 1;
  do {
    print('Hi,do While loop');
    i++;
  } while (i <= count);

  // Defining the label
  retu:
  for (int i = 0; i < 3; i++) {
    if (i < 2) {
      print("You are inside the loop retu");

      // breaking with label
      break retu;
    }
    print("You are still inside the loop");
  }

  retu:
  for (int i = 0; i < 3; i++) {
    if (i < 2) {
      print("You are inside the loop retu");

      // breaking with label
      continue retu;
    }
    print("You are still inside the loop");
  }
}

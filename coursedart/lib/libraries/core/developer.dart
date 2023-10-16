import 'dart:developer';

void calculateSum() {
  int sum = 0;
  for (int i = 0; i < 1000; i++) {
    sum += i;
  }
  Timeline.instantSync('Sum Calculation', arguments: {'sum': sum});
  print('Sum: $sum');
}

void main() {
  // log('Wecome to Devloper dart library', time: DateTime.now());
  // int x = 5;
  // debugger();
  // print('The value of x is: $x');
  // int sum = 0;

  // for (int i = 1; i <= 10; i++) {
  //   sum += i;
  //   debugger(); // Breakpoint
  // }

  // print('Sum: $sum');
  // Stopwatch stopwatch = Stopwatch()..start();

  // for (int i = 0; i < 1000000; i++) {
  //   // Some time-consuming operation
  // }

  // stopwatch.stop();
  // log('Execution time: ${stopwatch.elapsedMilliseconds} ms');

  int age = -5;

  assert(age > 0, 'Age must be a positive number');

  log('Age: $age');
}

// sync* functions return an iterable
Iterable<int> countUpTo(int n) sync* {
  int i = 0;
  while (i <= n) {
    yield i;
    i++;
    // yield keyword is used to generate the value
  }
}

Iterable<int> fibonacci() sync* {
  //like fibonacci of 5 is 0, 1, 1, 2, 3 Equle 3
  int x = 0, y = 1;
  while (true) {
    yield x;
    int next = x + y;
    x = y;
    y = next;
  }
}

Iterable<int> evenNumbers(List<int> numbers) sync* {
  for (int number in numbers) {
    if (number % 2 == 0) {
      yield number;
    }
  }
}
//----------------------------async*----------------------------/

// async* function(s) return an stream
Stream<int> countDownTo(int number) async* {
  while (number != 0) yield number--;
}

Stream<int> oddNumbers(List<int> numbers) async* {
  for (int number in numbers) {
    if (number % 2 != 0) {
      yield number;
    }
  }
}

Future<void> main() async {
  countUpTo(10).forEach(
    (element) => print(element),
  );

  fibonacci().take(20).forEach((element) {
    print(element);
  });

  List<int> numbers = [10, 20, 33, 4, 51, 6, 71, 8, 9, 10];
  Iterable<int> even = evenNumbers(numbers);
  for (int number in even) {
    print(number);
  }
  // print(countUpTo(10));
  print("Hi,Welcome to async Stream Object\n");
  await countDownTo(10).forEach((element) {
    print(element);
  });

  Stream<int> odd = oddNumbers(numbers);
  await for (int number in odd) {
    print(number);
  }
}

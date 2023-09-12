import 'dart:convert';
import 'dart:io';

void fun(int x) {
  print('Value x is $x');
}

void main(List<String> args) {
  print("Enter x values : ");
  int? x = int.parse(stdin.readLineSync()!);

  fun(x);
}

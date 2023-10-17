import 'dart:io';

dynamic dispalyMessage() async {
  print("Started");
}

Future message(int deuration, String msg) {
  var del = Future.delayed(Duration(seconds: deuration), ((dispalyMessage())))
      .then((value) => print("Duration finsh ${value}"));

  return del;
}

void main() async {
  await message(1, "Hi welcome").then((value) => print(value));
  // HttpServer.bind('127.0.0.1', 8080)
  //     .then((server) => print('${server.isBroadcast}'))
  //     .catchError(print);
}

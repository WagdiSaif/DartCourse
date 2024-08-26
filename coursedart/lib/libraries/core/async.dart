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
  var server = await HttpServer.bind(InternetAddress.anyIPv6, 80);
  await server.forEach((HttpRequest request) {
    request.response.write('Hello, world!');
    request.response.close();
  });
  // .then((server) {
  // print(server.port);
  // server.forEach((element) {
  //   element.response
  //     ..write('Hi,Welcome to Server')
  //     ..close();
  // });
  //   print('${server.isBroadcast}');
  // }).catchError(print);
}

import 'dart:convert';

class Myinfo {
  final String name;
  final int age;
  final String email;

  Myinfo({required this.name, required this.age, required this.email});

  factory Myinfo.fromJson(Map<String, dynamic> Json) {
    return Myinfo(name: Json['name'], age: Json['age'], email: Json['email']);
  }

  Map<String, dynamic> toJson() {
    return {'name': this.name, 'age': this.age, 'email': this.email};
  }
}

void main() {
  Myinfo myinfo =
      Myinfo(name: "Whadi Siaf", age: 25, email: "wagdiSaif@gmail.com");

  String encoder = json.encode(myinfo.toJson());

  print(encoder);

  String info =
      '{ "name": "Whadi Siaf", "age": 25, "email": "wagdiSaif@gmail.com" }';
  Map<String, dynamic> decodeinfo = json.decode(info);
  Myinfo decode = Myinfo.fromJson(decodeinfo);

  print(decode.age);
  print(decode.email);
  print(decode.name);
  //-----------------------with Base64-------------------------------/
  String text = 'Hello, Iam SW EN';

  String encodedText = base64Encode(utf8.encode(text));
  print("This Is Text before decoder :    $encodedText");

  List<int> decodedBytes = base64Decode(encodedText);
  String decodedText = utf8.decode(decodedBytes);
  print("This Is Text after decoder :    $decodedText");

  //-----------------------With URL----------------------------/
  String url = 'https://code.visualstudio.com/docs/cpp/config-mingw';

  String encodedUrl = Uri.encodeFull(url);
  print(encodedUrl);

  String decodedUrl = Uri.decodeFull(encodedUrl);
  print(decodedUrl);
}

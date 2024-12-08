import 'user.dart';

void main() {
  User user = User(id: 1, name: 'Hassan Hamed', email: 'Hamed@example.com');

  // Convert user to JSON
  Map<String, dynamic> json = user.toJson();
  print(json);

  User newUser = User.fromJson(json);
  print('Name from Json: ${newUser.name}');
}

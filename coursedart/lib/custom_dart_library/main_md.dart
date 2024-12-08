import 'export.dart';

void main(List<String> args) {
  User user = User("Sam Ali", 23);
  UserManager().addUser(user);
}

import 'export.dart';
import 'validation.dart';

void main(List<String> args) {
  User user = User("Wagdi Saif ", 23,username: 'WagdiSaif',password:'a2ddWEddsffwcj');

print("*"*50);
print('is user name Valid :${UserValidation(user).isValidUsername}');
print("*"*50);
print('is user password Valid :${UserValidation(user).isValidPassword}');

  UserManager().addUser(user);
}

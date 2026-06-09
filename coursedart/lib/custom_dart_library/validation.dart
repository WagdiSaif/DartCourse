import 'user_library.dart';

extension type   UserValidation(User user){

  bool get isValidUsername=>user.username.isNotEmpty&&user.username!='';
 bool get isValidPassword=>RegExp(r'^(?!.*\s)(?:[^A-Za-z]*[A-Za-z]){5,}.*$').hasMatch(user.password);


}
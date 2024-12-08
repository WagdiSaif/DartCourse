library user_library;
part 'user_model.dart';
part 'user_utilities.dart';
class UserManager {
  void addUser(User user) {
    if (!validateUser(user)) {
      throw Exception('User validation failed.');
    }
  
    print('Adding user: ${user.name}');
  }
}

part of user_library; 

bool validateUser(User user) {
  return user.name.isNotEmpty && user.age > 0;
}

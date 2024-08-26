


void main(List<String> args) {
//spread operator with List

  List<String> animalsList1 = ['Dog', 'Cat', 'Lion', 'Tiger'];
  List<String> animalsMain = ['Wolf', 'Panda', ...animalsList1];

  print('The animals List are :    $animalsMain');

  //spread operator with Map
  Map<String, dynamic> profileData = {
    'username': 'Jon3tu',
    'email': 'jon23@gmail.com',
    'password': '&5\$uydu443'
  };
  Map<String, dynamic> personalData = {
    'name': 'Jon',
    'age': 26,
    'nationality': 'USA',
    ...profileData
  };

  print('The person Info  are :    $personalData');

  //spread operator with Set
  Set<String> lang = {'Ar', 'En','Fr'};
  Set<String> langBase = {'es','de',...lang};

  print('The set langBase  are :    $langBase');
}



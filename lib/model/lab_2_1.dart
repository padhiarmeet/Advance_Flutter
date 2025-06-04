class UserModel {
  List<Map<String, dynamic>> _users = [
    {'name': 'fist User', 'isFav': true},
    {'name': 'second User', 'isFav': false},
    {'name': 'third User', 'isFav': true}
  ];

  List<Map<String,dynamic>> get users => _users;

  void addFavourite(String name, bool isFav) {
    int index = _users.indexWhere(
      (element) => element["name"] == name,
    );
    _users[index]['isFav'] = isFav;
  }
}

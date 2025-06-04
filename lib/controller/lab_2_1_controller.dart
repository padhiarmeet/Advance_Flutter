import 'package:untitled1/model/lab_2_1.dart';

class UserFavouriteControllr{
  UserModel _userFav = UserModel();
  List<Map<String,dynamic>> get users => _userFav.users;

  void UserFav(String name,bool isFav){
    _userFav.addFavourite(name, isFav);
  }
}
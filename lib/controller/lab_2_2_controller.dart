import 'package:untitled1/model/lab_2_2_model.dart';

class UserSignUPController{
  UserSignUpModel userSignUpModel = UserSignUpModel();

  String? checkForName(String? value,String message){
    return userSignUpModel.validateName(value, message);
  }
  String? checkForEmail(String? value,String message){
    return userSignUpModel.validateEmail(value, message);
  }
  String? checkForPhone(String? value,String message){
    return userSignUpModel.validatePhone(value, message);
  }
  String? checkForPassword(String? value,String message){
    return userSignUpModel.validatePassword(value, message);
  }
  String? checkForConfirmPassword(String? value,String message,String originalPassword){
    return userSignUpModel.validateConfirmPassword(value, message,originalPassword);
  }
}
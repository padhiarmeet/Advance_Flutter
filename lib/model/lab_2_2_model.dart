class UserSignUpModel{
  String? validate_name(String? value,String message){
    if(value == null || value.isEmpty){
      return message;
    }
  }
}
class UserSignUpModel{
  //validate Name
  String? validateName(String? value,String message){
    if(value == null || value.isEmpty){
      return message;
    }
    return null;
  }

  //validate Email
  String? validateEmail(String? value,String message){
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if(!regex.hasMatch(value!)){
      return message;
    }
    return null;
  }

  //validate PhoneNumber
  String? validatePhone(String? value,String message){
    if(value == null || value.isEmpty){
      return message;
    }
    return null;
  }

  String? validatePassword(String? value,String message){
    if(value == null || value.isEmpty){
      return message;
    }
    return null;
  }

  String? validateConfirmPassword(String? value,String message,String originalPassword){
    if(value == null || value.isEmpty || value != originalPassword){
      return message;
    }
    return null;
  }
}
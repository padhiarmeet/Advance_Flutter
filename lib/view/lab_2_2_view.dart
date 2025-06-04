import 'package:flutter/material.dart';

import '../controller/lab_2_2_controller.dart';

class UserSignUp extends StatefulWidget {
  const UserSignUp({super.key});

  @override
  State<UserSignUp> createState() => _UserSignUpState();
}

class _UserSignUpState extends State<UserSignUp> {


  GlobalKey<FormState> formKey = GlobalKey();

  UserSignUPController _userSignUPController = UserSignUPController();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController conformPasswordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneNumberController.dispose();
    passwordController.dispose();
    conformPasswordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SignUp Screen'),
      ),
      body: Container(
        child: Form(
          key: formKey,
          child: Column(
            children: [

              TextFormField(
                controller: nameController,
                validator: (value) {
                 return _userSignUPController.checkForName(value, 'Enter valid name');
                },
                decoration: InputDecoration(label: Text('name'),border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
              ),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(label: const Text('Email'),border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
                validator: (value) {
                  return _userSignUPController.checkForEmail(value, 'Enter valid Email');
                },
              ),
              TextFormField(
                controller: phoneNumberController,
                decoration: InputDecoration(label: const Text('Phone number'),border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
                validator: (value) {
                 return  _userSignUPController.checkForPhone(value, 'Enter valid number');
                },
              ),
              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(label: Text('password'),border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
                validator: (value) {
                  return _userSignUPController.checkForPassword(value, 'Enter your password');
                },
              ),
              TextFormField(
                controller: conformPasswordController,
                decoration: InputDecoration(label: Text('confirm Password'),border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
                validator: (value) {
                  return _userSignUPController.checkForConfirmPassword(value, 'Enter valid password',passwordController.toString());
                },
              ),
              ElevatedButton(onPressed: () {
                if(formKey.currentState!.validate()){
                  print('Something is wrong');
                }
              }, child: const Text('Submit'))
            ],
          ),
        ),
      ),
    );
  }
}

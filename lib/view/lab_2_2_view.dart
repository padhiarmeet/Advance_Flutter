import 'package:flutter/material.dart';

import '../controller/lab_2_2_controller.dart';

class UserSignUp extends StatefulWidget {
  const UserSignUp({super.key});

  @override
  State<UserSignUp> createState() => _UserSignUpState();
}

class _UserSignUpState extends State<UserSignUp> {

  GlobalKey formKey = GlobalKey();

  UserSignUPController _userSignUPController = UserSignUPController();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();
  TextEditingController conformPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('signUp Screen'),
      ),
      body: Container(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                validator: (value) => ,
                decoration: InputDecoration(label: Text('name'),border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
              ),
              TextFormField(
                decoration: InputDecoration(label: Text('Email'),border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
              ),
              TextFormField(
                decoration: InputDecoration(label: Text('Phone number'),border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
              ),
              TextFormField(
                decoration: InputDecoration(label: Text('password'),border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
              ),
              TextFormField(
                decoration: InputDecoration(label: Text('conform Password'),border: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

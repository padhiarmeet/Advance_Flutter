import 'package:flutter/material.dart';
import 'package:untitled1/controller/lab_2_1_controller.dart';

class UserFav extends StatefulWidget {
  const UserFav({super.key});

  @override
  State<UserFav> createState() => _UserFavState();
}

class _UserFavState extends State<UserFav> {

  UserFavouriteControllr userContoler = UserFavouriteControllr();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourite users'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: userContoler.users.length,
              itemBuilder: (context, index) {
                print(userContoler.users[index]);
              return ListTile(
                title: Text(userContoler.users[index]['name']),
                trailing: IconButton(onPressed: () {
                  setState(() {
                    userContoler.UserFav(userContoler.users[index]['name'], !userContoler.users[index]['isFav']);
                  });
                },
                    icon: userContoler.users[index]['isFav'] == true ? Icon(Icons.favorite_sharp) : Icon(Icons.favorite_border_sharp)),
              );
            },),
          ),
        ],
      ),
    );
  }
}


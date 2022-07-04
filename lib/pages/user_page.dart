import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:layouts/pages/listView.dart';

class UserPage extends StatelessWidget {
  final User user;
  const UserPage({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.name),
      ),
      body:Center(
      child: Column (
      children: <Widget>[
        CircleAvatar(
          backgroundImage: NetworkImage(user.imageUrl),
          radius: 100,
        ),
        Text(
            user.name,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
        ),
        Text(
            user.email,
            style: TextStyle(
              fontSize: 15,
            ),
        ),
        Text(
            user.phone,
            style: TextStyle(
              fontSize: 15,
            ),
        ),
      ],
    )
    )
    );
  }
}

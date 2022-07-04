import 'package:flutter/material.dart';
import 'package:layouts/pages/user_page.dart';

class List_View extends StatefulWidget {
  const List_View({Key? key}) : super(key: key);

  @override
  State<List_View> createState() => _List_ViewState();
}

class _List_ViewState extends State<List_View> {

  List<User> users = [
    const User(
      name: 'John Doe',
      email: 'John@mail.ma',
      imageUrl:"https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50?s=200",
      phone: '+1234556543',
    ),
    const User(
      name: 'John Doe',
      email: 'John@mail.ma',
      imageUrl:"https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50?s=200",
      phone: '+1234556543',
    ),
    const User(
      name: 'John Doe',
      email: 'John@mail.ma',
      imageUrl:"https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50?s=200",
      phone: '+1234556543',
    ),
    const User(
      name: 'John Doe',
      email: 'John@mail.ma',
      imageUrl:"https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50?s=200",
      phone: '+1234556543',
    ),
    const User(
      name: 'John Doe',
      email: 'John@mail.ma',
      imageUrl:"https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50?s=200",
      phone: '+1234556543',
    ),
    const User(
      name: 'John Doe',
      email: 'John@mail.ma',
      imageUrl:"https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50?s=200",
      phone: '+1234556543',
    ),
    const User(
      name: 'John Doe',
      email: 'John@mail.ma',
      imageUrl:"https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50?s=200",
      phone: '+1234556543',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade300,
      ),
      body:ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return Card(
            child: ListTile(
              leading:CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage('https://picsum.photos/200/300?image=${index+1}'),
              ),
              title: Text('${user.name}'),
              subtitle: Text('${user.email}'),
              trailing: const Icon(Icons.arrow_circle_right_outlined),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => UserPage(user: user)));
              },
            ),
          );
        },
      ),
    );  }
}

class User {
  final String name;
  final String email;
  final String phone;
  final String imageUrl;

  const User({required this.phone,required this.name,required this.imageUrl,required  this.email});
}
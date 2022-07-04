import 'package:flutter/material.dart';

import 'SideNavbar/drawer.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Side Navbar Widget
      drawer: const NavigationDrawer(),
      appBar: AppBar(
        title: const Text('Navigation Drawer'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade300,
      ),
      body:Center(
        child: const Text('Navigation Drawer'),
      ),
    );
  }
}



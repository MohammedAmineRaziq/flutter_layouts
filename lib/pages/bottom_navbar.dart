import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:layouts/pages/profile.dart';
import 'package:layouts/pages/list.dart';

import '../main.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  var index=0;
  final screens = [
    Home(),
    Profile(),
    List()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[index],
        bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
            height: 60,
            indicatorColor: Colors.blue.shade100,
            labelTextStyle: MaterialStateProperty.all(
              const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          child :NavigationBar(
            animationDuration: const Duration(milliseconds: 1000),
            labelBehavior : NavigationDestinationLabelBehavior.onlyShowSelected,
            selectedIndex: index,
            onDestinationSelected: (index) {
              setState(() {
                this.index = index;
              });
            },
            destinations: const [
              NavigationDestination(
                  icon:Icon(Icons.home_outlined),
                  selectedIcon: Icon(Icons.home),
                  label: "Home"),
              NavigationDestination(
                  icon:Icon(Icons.person_outline),
                  selectedIcon: Icon(Icons.person),
                  label: "Profile"),
              NavigationDestination(
                  icon:Icon(Icons.search_outlined),
                  selectedIcon: Icon(Icons.search),
                  label: "Search"),
            ],
          ),
        )
    );
  }
}

import 'package:flutter/material.dart';
import 'package:layouts/pages/profile.dart';

import '../main.dart';
import 'listView.dart';

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
    List_View()
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
                  icon:Icon(Icons.list_alt_outlined),
                  selectedIcon: Icon(Icons.list_alt),
                  label: "List"),
            ],
          ),
        )
    );
  }
}

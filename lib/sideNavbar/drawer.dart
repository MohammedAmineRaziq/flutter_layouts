import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:layouts/sideNavbar/drawer_item.dart';

import 'drawer_header.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:SingleChildScrollView(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Header(),
            DrawerItems(),
          ],
        )
      )
    );
  }
}

import 'package:flutter/material.dart';
import 'package:layouts/main.dart';
import 'package:layouts/pages/bottom_navbar.dart';
import 'package:layouts/pages/carousel.dart';
import 'package:layouts/pages/first_card.dart';

import '../pages/second_card.dart';

class DrawerItems extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
    child: Wrap(
      runSpacing: 10,
      children: [
        ListTile(
          leading: Icon(Icons.home_outlined),
          title: Text('Home'),
          onTap: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Home()));
          },
        ),
        ListTile(
          leading: Icon(Icons.border_bottom),
          title: Text('Bottom Navber'),
          onTap: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => BottomNavbar()));
          },
        ),
        ListTile(
          leading: Icon(Icons.image),
          title: Text('Carousel'),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Carousel()));
          },
        ),
        const Divider(
            height: 2,
            color: Colors.black,
            thickness: 1, // thickness of the line
            indent: 20, // empty space to the leading edge of divider.
            endIndent: 20,
        ),
        ListTile(
          leading: Icon(Icons.credit_card_rounded),
          title: Text('First Card'),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => FirstCard()));
          },
        ),
        ListTile(
          leading: Icon(Icons.credit_card_rounded),
          title: Text('Second Card'),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondCard()));
          },
        ),
      ],
      )
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:layouts/pages/profile.dart';

class Header extends StatelessWidget {
  const Header ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blue.shade700,
          child:InkWell(
            onTap:(){
              Navigator.pop(context);
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Profile()));
            },
              child: Container(
                color: Colors.blue.shade700,
                padding: EdgeInsets.only(top:MediaQuery.of(context).padding.top+16 , bottom: 16),
                child: Column(
                  children: const [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/profile.jpg'),
                      radius: 50,
                    ),
                    SizedBox(height: 20),
                    Text(
                      'User Name',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'More Info',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w100,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
              )
      )
    );
  }
}

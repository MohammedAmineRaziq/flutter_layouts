import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstCard extends StatefulWidget {
  const FirstCard({Key? key}) : super(key: key);

  @override
  State<FirstCard> createState() => _FirstCardState();
}

class _FirstCardState extends State<FirstCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text('First Card'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade300,
      ),
      body:Card(
        margin: EdgeInsets.all(20),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children:[
            Ink.image(
              child: InkWell(
                onTap:(){},
              ),
              image: NetworkImage('https://images.unsplash.com/photo-1592035659284-3b39971c1107?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1163&q=80'),
              fit: BoxFit.cover,
              height: 240,
              width: MediaQuery.of(context).size.width,
              colorFilter: ColorFilter.mode(Colors.black12.withOpacity(0.6), BlendMode.dstATop),
            ),
            const Padding(padding: EdgeInsets.only(left: 10, bottom: 60),
              child:Text(
                'Title',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily:'Roboto' ,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(left: 10, bottom: 15 ,right: 20),
              child:Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur malesuada eros urna, nec venenatis diam scelerisque et. Sed egestas, sapien eget pellentesque faucibus',
                style: TextStyle(
                  fontSize: 10,
                  fontFamily:'Roboto' ,
                  color: Colors.white,
                ),
                maxLines: 3,
              ),
            ),

          ]
        )
      ),
    );
  }
}

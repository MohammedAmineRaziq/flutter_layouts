import 'package:flutter/material.dart';

class SecondCard extends StatefulWidget {
  const SecondCard({Key? key}) : super(key: key);

  @override
  State<SecondCard> createState() => _SecondCardState();
}

class _SecondCardState extends State<SecondCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Card'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade300,
      ),
      body: Container(
          height: MediaQuery.of(context).size.height * 0.5,
          child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          margin: EdgeInsets.all(10),
          child: Column(
              children: [
                Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Ink.image(
                        child: InkWell(
                          onTap: () {},
                        ),
                        image: const NetworkImage(
                            'https://images.unsplash.com/photo-1592035659284-3b39971c1107?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1163&q=80'),
                        fit: BoxFit.cover,
                        height: 240,
                        width: MediaQuery.of(context).size.width,
                      ),
                      const Positioned(
                        bottom: 12,
                        left: 12,
                        right: 12,
                        child:Text(
                          'Title',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ]
                ),
                 Padding(
                  padding: EdgeInsets.all(10).copyWith(bottom: 0),
                  child: const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur malesuada eros urna, nec venenatis diam scelerisque et. Sed egestas, sapien eget pellentesque faucibus',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                    maxLines: 3,
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: Icon(Icons.favorite_border),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.share),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.more_vert),
                      onPressed: () {},
                    ),
                  ],
                ),
              ]
          )
      )
      ),
    );
  }
}

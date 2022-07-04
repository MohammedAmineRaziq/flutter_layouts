import 'package:flutter/material.dart';

class List extends StatelessWidget {
  const List({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade300,
      ),
      body: Center(
        child: const Text('List'),
      ),
    );
  }
}

import 'package:Tree_Companion/types.dart';
import 'package:flutter/material.dart';

class Awesome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AwesomeApp(),
    );
  }
}

class AwesomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset("assets/awesomePG.png"),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Types()),
          );
        },
        label: Text('Continue'),
        icon: Icon(Icons.arrow_right),
        backgroundColor: Colors.green,
      ),
    );
  }
}
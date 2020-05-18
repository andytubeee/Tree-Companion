import 'package:Tree_Companion/Postalcode.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomeApp()
    );
  }
}

class WelcomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image(image: AssetImage("assets/WelcomePG.png"),),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Postalcode()),
          );
        },
        label: Text('Continue'),
        icon: Icon(Icons.arrow_right),
        backgroundColor: Colors.green,
      ),
    );
  }
}
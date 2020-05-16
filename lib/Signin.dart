import 'package:Tree_Companion/Welcome.dart';
import 'package:flutter/material.dart';

class Signin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Image(image: AssetImage("assets/SigninPG.png")      
        ),
        floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Welcome()),
          );
        },
        label: Text('Login'),
        icon: Icon(Icons.arrow_right),
        backgroundColor: Colors.green,
      ),
      )
    );
  }
}
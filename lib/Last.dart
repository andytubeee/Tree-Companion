import 'package:flutter/material.dart';

class Last extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LastPage(),
    );
  }
}

class LastPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text("The End!"),
      )
    );
  }
}
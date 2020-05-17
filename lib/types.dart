import 'package:Tree_Companion/Last.dart';
import 'package:Tree_Companion/map.dart';
import 'package:flutter/material.dart';

class Types extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TypesApp(),
    );
  }
}

class TypesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset("assets/typesPG.png"),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MapP()),
          );
        },
        label: Text('Continue'),
        icon: Icon(Icons.arrow_right),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
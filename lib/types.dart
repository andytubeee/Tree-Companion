import 'package:Tree_Companion/Last.dart';
import 'package:Tree_Companion/dashboard.dart';
import 'package:Tree_Companion/map.dart';
import 'package:flutter/material.dart';
import 'leaderboard.dart';

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
      backgroundColor: Colors.white,
      body: Image.asset("assets/typesPG.png"),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Dashboard()),
          );
        },
        label: Text('Continue'),
        icon: Icon(Icons.arrow_right),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
import 'package:Tree_Companion/map.dart';
import 'package:flutter/material.dart';

class Leaderboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LdApp());
  }
}

class LdApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Stack(
        children: <Widget>[
          new Image.asset("assets/leaderboardPG.png")
        ],
      ),
    ), floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MapP()),
          );
        },
        label: Text('Map'),
        icon: Icon(Icons.map),
        backgroundColor: Colors.green,
      ),);
  }
}

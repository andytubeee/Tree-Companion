import 'package:Tree_Companion/dashboard.dart';
import 'package:Tree_Companion/map.dart';
import 'package:Tree_Companion/wallet.dart';
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
              new Image.asset(
                "assets/leaderboardPG.png",
                width: MediaQuery.of(context).size.width,
              ),
            ],
          ),
        ),
        floatingActionButton: new Container(
          margin: EdgeInsets.only(right: 180),
          child: FloatingActionButton.extended(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Dashboard()),
              );
            },
            label: Text("Dashboard"),
            icon: Icon(Icons.arrow_left),
            backgroundColor: Colors.green,
          ),
        ));
  }
}

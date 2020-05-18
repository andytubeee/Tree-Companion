import 'package:Tree_Companion/leaderboard.dart';
import 'package:Tree_Companion/map.dart';
import 'package:Tree_Companion/types.dart';
import 'package:Tree_Companion/wallet.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DashApp(),
    );
  }
}

class DashApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.greenAccent,
        child: Stack(
          children: <Widget>[
            new Image.asset("assets/DashboardPG.png", width: MediaQuery.of(context).size.width,),
            new Container(
              child: Column(
                children: <Widget>[
                  //Companion Button
                  new Container(
                    margin: EdgeInsets.only(top: 120, left: 70),
              width: 220,
              height: 83,
              child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Types()),
                    );
                  },
                  child: Text(""))),
                  new Container(
                    //Map
                    margin: EdgeInsets.only(top: 35, left: 70),
              width: 220,
              height: 83,
              child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MapP()),
                    );
                  },
                  child: Text(""))),
                  new Container(
                    //Wallet
                    margin: EdgeInsets.only(top: 35, left: 70),
              width: 220,
              height: 83,
              child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Wallet()),
                    );
                  },
                  child: Text(""))),
                  new Container(
                    //Leaderboard
                    margin: EdgeInsets.only(top: 35, left: 70),
              width: 220,
              height: 83,
              child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Leaderboard()),
                    );
                  },
                  child: Text(""))),
                ],
              ),
            )
          ],
        ),
      ),
      
    );
  }
}
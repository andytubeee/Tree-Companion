import 'package:Tree_Companion/leaderboard.dart';
import 'package:flutter/material.dart';

class Wallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WalletApp(),
    );
  }
}

class WalletApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Stack(
        children: <Widget>[
          new Image.asset(
            "assets/WalletPG.png",
            width: MediaQuery.of(context).size.width,
          ),
          new Container(
            margin: EdgeInsets.only(top: 660, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new FloatingActionButton.extended(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Leaderboard()),
                    );
                  },
                  label: Text("Back"),
                  icon: Icon(Icons.arrow_left),
                  backgroundColor: Colors.green,
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

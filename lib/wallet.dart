import 'package:Tree_Companion/dashboard.dart';
import 'package:Tree_Companion/giftcard.dart';
import 'package:flutter/material.dart';
import 'leaderboard.dart';

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
      backgroundColor: Colors.greenAccent,
        body: Container(
      child: Stack(
        children: <Widget>[
          new Image.asset(
            "assets/WalletPG.png",
            width: MediaQuery.of(context).size.width,
          ),
          new Container(
              //Spend Button
              margin: EdgeInsets.only(top: 220, left: 20),
              width: 150,
              height: 100,
              child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GiftCard()),
                    );
                  },
                  child: Text(""))),
          new Container(
              //Transfer Button
              margin: EdgeInsets.only(top: 220, left: 190),
              width: 150,
              height: 100,
              child: FlatButton(onPressed: () {}, child: Text(""))),
          new Container(
            margin: EdgeInsets.only(top: 660, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new FloatingActionButton.extended(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Dashboard()),
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

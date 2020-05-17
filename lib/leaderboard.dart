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
              new Image.asset("assets/leaderboardPG.png", width: MediaQuery.of(context).size.width,),
            ],
          ),
        ),
        floatingActionButton: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            new FloatingActionButton.extended(
              heroTag: "WalletBtn",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Wallet()),
                );
              },
              label: Text('Wallet'),
              icon: Icon(Icons.account_balance_wallet),
              backgroundColor: Colors.green,
            ),
            new SizedBox(height: 10),
            new FloatingActionButton.extended(
              heroTag: "MapBtn",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MapP()),
                );
              },
              label: Text('Map'),
              icon: Icon(Icons.map),
              backgroundColor: Colors.green,
            ),
          ],
        )));
  }
}

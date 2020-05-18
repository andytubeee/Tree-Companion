import 'package:Tree_Companion/wallet.dart';
import 'package:flutter/material.dart';

class GiftCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GiftCardApp(),
    );
  }
}

class GiftCardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Container(
        child: Stack(
          children: <Widget>[
            new Image.asset("assets/giftcardPG.png", width: MediaQuery.of(context).size.width,),
            new Container(
            margin: EdgeInsets.only(top: 660, left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                      context,  
                      MaterialPageRoute(builder: (context) => Wallet()),
                    );
                  },
                  child: Icon(Icons.arrow_left),
                  backgroundColor: Colors.green,
                )
              ],
            ),
          ),
          ],
        ),
      ),
    );
  }
}

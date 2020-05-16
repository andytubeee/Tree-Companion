import 'package:Tree_Companion/awesome.dart';
import 'package:flutter/material.dart';

bool ck1 = false;
bool ck2 = false;
bool ck3 = false;

class chooseInterest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: chooseApp(),
    );
  }
}

class chooseApp extends StatefulWidget {
  @override
  _chooseAppState createState() => _chooseAppState();
}

class _chooseAppState extends State<chooseApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: new Stack(
          children: <Widget>[
            new Image.asset("assets/choosePG.png"),
            new Container( 
              margin: EdgeInsets.only(top: 250, left: 50),
              child: Column(
                children: <Widget>[
                  CheckboxListTile(
                  title: Text("Pollution", style: TextStyle(color: Colors.white, fontSize: 20)),
                  value: ck1,
                  onChanged: chk1,
                  controlAffinity:
                      ListTileControlAffinity.leading, //  <-- leading Checkbox
                ),
                CheckboxListTile(
                  title: Text("Animal Wellbeing", style: TextStyle(color: Colors.white, fontSize: 20)),
                  value: ck2,
                  onChanged: chk2,
                  controlAffinity:
                      ListTileControlAffinity.leading, //  <-- leading Checkbox
                ),
                CheckboxListTile(
                  title: Text("Natural Resources", style: TextStyle(color: Colors.white, fontSize: 20)),
                  value: ck3,
                  onChanged: chk3,
                  controlAffinity:
                      ListTileControlAffinity.leading, //  <-- leading Checkbox
                )
                ],
              )
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Awesome()),
          );
        },
        label: Text('Continue'),
        icon: Icon(Icons.arrow_right),
        backgroundColor: Colors.green,
      ),
    );
  }

  void chk1(bool newValue) => setState(() {
        ck1 = newValue;
      });
  void chk2(bool newValue) => setState(() {
        ck2 = newValue;
      });
  void chk3(bool newValue) => setState(() {
        ck3 = newValue;
      });
}

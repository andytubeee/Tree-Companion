import 'package:Tree_Companion/chooseInterest.dart';
import 'package:flutter/material.dart';

class Postalcode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PCApp(),
    );
  }
}

class PCApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: new Stack(
          children: <Widget>[
            new Image.asset("assets/PostalcodePG.png"),
            new Positioned(
                child: Container(
                    alignment: Alignment.center,  
                    width: 300,
                    margin: EdgeInsets.only(left: 30),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white, fontSize: 20), textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        icon: Icon(Icons.add_location),
                      ),
                      onSaved: (String value) {
                        // This optional block of code can be used to run
                        // code when the user saves the form.
                      },
                      validator: (String value) {
                        return value.contains('@')
                            ? 'Do not use the @ char.'
                            : null;
                      },
                    ))),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => chooseInterest()),
          );
        },
        label: Text('Continue'),
        icon: Icon(Icons.arrow_right),
        backgroundColor: Colors.green,
      ),
    );
  }
}

class CenterHorizontal extends StatelessWidget {
  CenterHorizontal(this.child);
  final Widget child;

  @override
  Widget build(BuildContext context) =>
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [child]);
}

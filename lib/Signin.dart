import 'package:Tree_Companion/Welcome.dart';
import 'package:flutter/material.dart';

class Signin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            new Image(image: AssetImage("assets/SigninPG.png")),
            new Container(
                width: 300,
                margin: EdgeInsets.only(left: 30, top: 250),
                child: TextFormField(
                  style: TextStyle(color: Colors.blueGrey, fontSize: 20),
                  decoration: const InputDecoration(
                    icon: Icon(Icons.email),
                    labelText: 'Email',
                  ),
                )),
                new Container(
                width: 300,
                margin: EdgeInsets.only(left: 30, top: 350),
                child: TextFormField(
                  style: TextStyle(color: Colors.blueGrey, fontSize: 20),
                  obscureText: true,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.enhanced_encryption),
                    labelText: 'Password',
                  ),
                ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Welcome()),
          );
        },
        label: Text('Login'),
        icon: Icon(Icons.arrow_right),
        backgroundColor: Colors.green,
      ),
    ));
  }
}

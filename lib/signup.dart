import 'package:Tree_Companion/Signin.dart';
import 'package:Tree_Companion/Welcome.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SignupApp());
  }
}

class SignupApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            new Image.asset("assets/SignupPG.png"),
            new Container(
                margin: EdgeInsets.only(left: 70, top: 38),
                child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Signin()),
                      );
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(fontFamily: 'Gibson'),
                    ))),
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
                )),
                new Container(
                width: 300,
                margin: EdgeInsets.only(left: 30, top: 450),
                child: TextFormField(
                  style: TextStyle(color: Colors.blueGrey, fontSize: 20),
                  obscureText: true,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.enhanced_encryption),
                    labelText: 'Confirm your Password',
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
        label: Text('Sign Up'),
        icon: Icon(Icons.arrow_right),
        backgroundColor: Colors.green,
      ),
    );
  }
}

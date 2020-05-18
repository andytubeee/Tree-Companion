import 'package:Tree_Companion/Signin.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:adobe_xd/blend_mask.dart';
import 'dart:io';

class LandingPRM extends StatelessWidget {
  LandingPRM({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LandingApp());
  }
}

class LandingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image(image: AssetImage("assets/LandingPRM.png")),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Signin()),
          );
        },
        label: Text('Get Started'),
        icon: Icon(Icons.arrow_right),
        backgroundColor: Colors.green,
      ),
    );
  }
}

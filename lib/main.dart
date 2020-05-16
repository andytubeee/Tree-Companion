import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.greenAccent
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tree Companion',style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}

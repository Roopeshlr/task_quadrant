import 'package:flutter/material.dart';
import 'package:taskquadrant/entry_widget.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fourth-Quadrant',
      theme: ThemeData(
       backgroundColor: Colors.white,
        primarySwatch: Colors.red,
      ),
      home: EntryWidget(),
    );
  }
}







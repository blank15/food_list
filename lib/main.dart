import 'package:flutter/material.dart';
import 'home.dart';
import 'detail.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: Home(),
      routes: {
        Home.tag : (context) => Home(),
        Detail.tag : (context) => Detail()
      },
    );
  }
}




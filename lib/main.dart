import  'package:flutter/material.dart';
import 'package:food_course/scr/screens/bag.dart';
import 'package:food_course/scr/screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Food App',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: Home()
    );
  }
}

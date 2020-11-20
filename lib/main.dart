import 'package:flutter/material.dart';
import 'package:flutter_food_ordering/constants.dart';
import 'package:flutter_food_ordering/screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Online Food Ordering',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.white,
          textTheme: TextTheme(
              body1: TextStyle(color: kSecondaryColor),
              body2: TextStyle(color: kSecondaryColor))),
      home: HomeScreen(),
    );
  }
}

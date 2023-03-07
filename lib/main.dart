import 'package:car_hub/screens/MainScreen/MainScreen.dart';
import 'package:car_hub/screens/splach.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
      home: splach(),
      routes: {
        'MainScreen':(context)=> MainScreen()

      },
    );
  }
}



import 'package:car_hub/screens/Auth/ForgetPassword.dart';
import 'package:car_hub/screens/Auth/LogIn.dart';
import 'package:car_hub/screens/Auth/SignUp.dart';
import 'package:car_hub/screens/CarDetails.dart';
import 'package:car_hub/screens/MainScreen/MainScreen.dart';
import 'package:car_hub/screens/splach.dart';
import 'package:flutter/material.dart';

import 'Widgets/Widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(backgroundColor:Color(0xff272f35) ),
            bottomNavigationBarTheme: BottomNavigationBarThemeData(

              backgroundColor: Color(0xff272f35),
            )

      ),


debugShowCheckedModeBanner: false,
      home: Signup(),
      routes: {
        'MainScreen':(context)=> MainScreen(),
        'CarDetails':(context)=>CarDetails(),
        'Login':(context)=>Login(),
                'Signup':(context)=>Signup(),
        'ForgetPaswword':(context)=>ForgetPaswword(),

      },
    );
  }
}



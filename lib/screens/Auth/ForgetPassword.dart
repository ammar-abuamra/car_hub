


import 'dart:async';

import 'package:flutter/material.dart';

import '../MainScreen/MainScreen.dart';

class ForgetPaswword extends StatefulWidget {
  const ForgetPaswword({Key? key}) : super(key: key);

  @override
  State<ForgetPaswword> createState() => _ForgetPaswwordState();
}

class _ForgetPaswwordState extends State<ForgetPaswword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Foget Password')),
backgroundColor: Color(0xff222222),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color:
                        Colors.grey.withOpacity(0.2)))),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Email or Phone number",
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none),
            ),
          ),


        ],
      ),
    );
  }
}

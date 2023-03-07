import 'dart:async';
import 'package:car_hub/screens/MainScreen/MainScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../const/colors.dart';

class splach extends StatefulWidget {
  const splach({Key? key}) : super(key: key);

  @override
  State<splach> createState() => _splachState();
}

class _splachState extends State<splach> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => MainScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/image/jp.jpg'))),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.symmetric(vertical: 15),
              height: 60,
              width: 60,
              child: CircularProgressIndicator(
                backgroundColor: Colors.black26,
                valueColor: AlwaysStoppedAnimation<Color>(kPrimaryColor),
                strokeWidth: 5,
              ),
            ),
          ],
        ), // lodaing indecetor
      ],
    );
  }
}

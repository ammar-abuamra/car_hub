


import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../const/colors.dart';
import 'LogIn.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Future<void> showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title:  Text('AlertDialog Title'),
          content:  SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Text('This is a demo alert dialog.'),
                Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Approve'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                colors: [
                  Color(0xffedb54f),
                  Color(0xff222222),
                ]
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 60,),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Signup"
                      , style: TextStyle(color: Colors.white, fontSize: 40,fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Text("Creat Acount and join our comminety", style: TextStyle(color:  Colors.white30, fontSize: 18),),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color:  Color(0xff222222),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 15,),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: <Widget>[
                              TextFiled(Hinttext: 'Full Name'),
                            TextFiled(Hinttext: 'Email'),
                            TextFiled(Hinttext: 'phone number'),

                          TextFiled(Hinttext: 'Password'),

                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(color: Colors.grey.withOpacity(0.2)))
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(Icons.person,color: kPrimaryColor),
                                    Container(
                                        padding: EdgeInsets.all(6),
                                        child: Text('Male',style: TextStyle(color: Colors.grey,fontSize:15 ),)),
                                    Radio(value: 0, groupValue: 0, onChanged: (value) => 0,activeColor: kPrimaryColor,)



                                  ]
                                ),
                                InkWell(
                                    onTap: () => showDialog<String>(
                                      context: context,
                                      builder: (BuildContext context) => AlertDiloG(),
                                    ),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Icon(Icons.female,color: kPrimaryColor),
                                        Container(
                                            padding: EdgeInsets.all(6),
                                            child: Text('Female',style: TextStyle(color: Colors.grey,fontSize:15 ),)),
                                        Radio(value: 2, groupValue: 0, onChanged: (value) => 1,activeColor: kPrimaryColor,)



                                      ]
                                  ),
                                )
                              ],
                            ),
                          ),


                            ],
                          ),
                        ),

                        SizedBox(height: 40,),
                        Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color:  Color(0xffedb54f)
                          ),
                          child: Center(
                            child: Text("Signup"
                                , style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                          ),
                        ),

                        SizedBox(height: 50,),
                        InkWell(
                            onTap:(){ Navigator.of(context).push(MaterialPageRoute(builder: (_) => Login()));} ,
                            child: Text("Back to login page >", style: TextStyle(color: Colors.grey),)),
                        SizedBox(height: 30,),


                       ],

                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AlertDiloG extends StatelessWidget {
  const AlertDiloG({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color(0xff222222),
      title: const Text('Stay Safe Stay at Kitchin 💛',style: TextStyle(color: kPrimaryColor)),
      content:  ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset('assets/image/womens.gif',fit: BoxFit.fill ,)),

      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'Cancel'),
          child: const Text('Cancel',style: TextStyle(color: kPrimaryColor)),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context, 'OK'),
          child: const Text('OK',style: TextStyle(color: kPrimaryColor)),
        ),
      ],
    );
  }
}

class TextFiled extends StatelessWidget {
   TextFiled({
    Key? key,
    required this.Hinttext
  }) : super(key: key);
String Hinttext;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey.withOpacity(0.2)))
      ),
      child: TextField(
        decoration: InputDecoration(
            hintText: Hinttext,
            hintStyle: TextStyle(color: Colors.grey),
            border: InputBorder.none
        ),
      ),
    );
  }
}

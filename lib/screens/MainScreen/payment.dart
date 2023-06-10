import 'package:car_hub/screens/MainScreen/MainScreen.dart';
import 'package:flutter/material.dart';

import '../../const/colors.dart';
import '../CarDetails.dart';
import 'navScreen.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kIconColor,
      body: SingleChildScrollView(
        child: Stack(alignment: Alignment.center, children: [
          Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(color: kIconColor),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 1,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(45),
                        topLeft: Radius.circular(45)),
                    color: Color(0xff10181e)),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: 140.0, bottom: 10, left: 15, right: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Card Number',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600)),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                          color: Color(0xff272f35),
                          borderRadius: BorderRadius.circular(15)),
                      height: 45,
                      width: double.infinity,
                      child: Center(
                          child: Text(
                        '1234 7589 6356 3251 2515',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white70,
                        ),
                      )),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0, top: 15),
                            child: Text(
                              'Expiare Date',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 155.0, top: 15),
                            child: Text(
                              'CVV',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          )
                        ]),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 15),
                          decoration: BoxDecoration(
                              color: Color(0xff272f35),
                              borderRadius: BorderRadius.circular(15)),
                          height: 60,
                          width: 180,
                          child: Center(
                            child: Text('12/05/2023',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white70,
                                )),
                          ),
                        ),
                        Container(
                          margin:
                              EdgeInsets.symmetric(vertical: 15, horizontal: 0),
                          decoration: BoxDecoration(
                              color: Color(0xff272f35),
                              borderRadius: BorderRadius.circular(15)),
                          height: 70,
                          width: 180,
                          child: Center(
                            child: Text('668',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white70,
                                )),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 0.0, bottom: 10, left: 15, right: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Name',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600)),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                          color: Color(0xff272f35),
                          borderRadius: BorderRadius.circular(15)),
                      height: 45,
                      width: double.infinity,
                      child: Center(
                          child: Text(
                        'Ammar Sabri AbuAmra',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white70,
                        ),
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, top: 15),
                      child: Row(
                        children: [
                          Icon(
                            Icons.check_circle,
                            color: kPrimaryColor,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Save Card Details',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) => Home()));
                      },
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 45, vertical: 15),
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                            child: Text(
                          'Add To Card ',
                          style: TextStyle(
                              fontSize: 20,
                              color: SecondryColor,
                              fontWeight: FontWeight.w500),
                        )),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 120,
            child: Container(
              height: 180,
              width: 300,
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(15)),
              child: Center(
                  child: Text('PayPal',
                      style: TextStyle(
                          color: SecondryColor,
                          fontSize: 55,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic))),
            ),
          ),
          Positioned(
              top: 30,
              // left: 150,

              child: Center(
                  child: Text(
                'Payment Conferm',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white70,
                    fontWeight: FontWeight.w700),
              ))),
        ]),
      ),
    );
  }
}

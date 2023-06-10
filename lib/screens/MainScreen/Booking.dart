import 'package:car_hub/const/colors.dart';
import 'package:car_hub/screens/MainScreen/payment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../CarDetails.dart';

class Booking extends StatefulWidget {
  const Booking({Key? key}) : super(key: key);

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.white70,
      body: SingleChildScrollView(
        child: Stack(alignment: Alignment.center, children: [
          Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(),
                child:
                    SvgPicture.asset('assets/image/map.svg', fit: BoxFit.cover),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 1,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20)),
                    color: Color(0xff10181e)),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 85.0, bottom: 20,left: 15,right: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Rent Details',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600)),
                          Text('180 \$',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.w600))
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                          color: Color(0xff272f35),
                          borderRadius: BorderRadius.circular(15)),
                      height: 70,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Icon(
                              Icons.gps_fixed_sharp,
                              color: kPrimaryColor,
                              size: 30,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10, right: 15),
                            color: Colors.grey,
                            height: 30,
                            width: 3,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 15, bottom: 5),
                                child: Text('Pick Up Location',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 16)),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 2),
                                child: Text('Amman , Khalda',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                          decoration: BoxDecoration(
                              color: Color(0xff272f35),
                              borderRadius: BorderRadius.circular(15)),
                          height: 70,
                          width: 180,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0,),
                                child: Icon(
                                  Icons.edit_calendar,
                                  color: kPrimaryColor,
                                  size: 30,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10, right: 15),
                                color: Colors.grey,
                                height: 30,
                                width: 3,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 15, bottom: 5),
                                    child: Text('Pick-Up Date',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 16)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 0),
                                    child: Text('fri 17 jun',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 15,horizontal: 0),
                          decoration: BoxDecoration(
                              color: Color(0xff272f35),
                              borderRadius: BorderRadius.circular(15)),
                          height: 70,
                          width: 180,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0,),
                                child: Icon(
                                  Icons.schedule,
                                  color: kPrimaryColor,
                                  size: 30,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10, right: 15),
                                color: Colors.grey,
                                height: 30,
                                width: 3,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                    EdgeInsets.only(top: 15, bottom: 5),
                                    child: Text('Time',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 16)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 0),
                                    child: Text('07:30 PM',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          decoration: BoxDecoration(
                              color: Color(0xff272f35),
                              borderRadius: BorderRadius.circular(15)),
                          height: 70,
                          width: 180,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0,),
                                child: Icon(
                                  Icons.edit_calendar,
                                  color: kPrimaryColor,
                                  size: 30,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10, right: 15),
                                color: Colors.grey,
                                height: 30,
                                width: 3,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                    EdgeInsets.only(top: 15, bottom: 5),
                                    child: Text('Drop-Off Date',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 16)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 0),
                                    child: Text('Mon 24 jun',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 15,horizontal: 0),
                          decoration: BoxDecoration(
                              color: Color(0xff272f35),
                              borderRadius: BorderRadius.circular(15)),
                          height: 70,
                          width: 180,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0,),
                                child: Icon(
                                  Icons.schedule,
                                  color: kPrimaryColor,
                                  size: 30,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10, right: 15),
                                color: Colors.grey,
                                height: 30,
                                width: 3,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                    EdgeInsets.only(top: 15, bottom: 5),
                                    child: Text('Time',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 16)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 0),
                                    child: Text('11:00 AM',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),


                   InkWell(
                       onTap: (){ Navigator.of(context).push(MaterialPageRoute(builder: (_) => Payment()));},
                     child:  Container(
                       margin: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                       height: 60,
                       width: double.infinity,
                       decoration: BoxDecoration(
                         color: kPrimaryColor,
                         borderRadius: BorderRadius.circular(15),
                       ),
                       child: Center(
                           child: Text(
                             'Procced To Payment ',
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
            top: 245,
            child: Container(
              height: 120,
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/image/corvet.png'),
                    fit: BoxFit.fill),
              ),
            ),
          ),

                    Positioned(
                top: 30,
                left: 10,

                child: InkWell(
                  onTap: (){ Navigator.of(context).push(MaterialPageRoute(builder: (_) => CarDetails()));},
                  child: Text(
                    '<< Car Detail',
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff10181e),
                        fontWeight: FontWeight.w700),
                  ),
                ))
            ,

        ]),
      ),
    );
  }
}

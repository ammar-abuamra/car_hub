import 'package:car_hub/const/colors.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../Widgets/Widgets.dart';
import '../CarDetails.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var jsonList ;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    GetData();
  }


  void GetData() async {
    try {
      var response = await Dio().get('http://192.168.1.169:3333/Vehicle');
      if (response.statusCode == 200) {
        print(response);

        setState(() {
          jsonList = response.data as List;
        });

      } else {
        print(response.statusCode);
      }
    } catch (e) {
      print(e);
    }
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffffffff),
        body: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            mainPageHeader(),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: HeaderText(),
            ),
            searchBar(),
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height / 1.8,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20)),
                    color: Color(0xff10181e)),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      height: 7,
                      width: 70,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10)),
                    ),//the notich on the top of the black container
                    Container(
                      height: 400,
                      child: ListView.separated(

                        separatorBuilder: (context, index) => Divider(),
                        itemBuilder: (context, index) => Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: (){ Navigator.of(context).push(MaterialPageRoute(builder: (_) => CarDetails()));},
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color(0xff272f35)),
                                height: 380,
                                width: double.infinity,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(15.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            jsonList[index]['name'],
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: PrimaryColor),
                                          ),
                                          Icon(
                                            Icons.favorite_border_outlined,
                                            color: Colors.white,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                      child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            jsonList[index]['model'],
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.normal,
                                                color: Colors.white),
                                          )),
                                    ),
                                    Container(
                                      height: 250,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        //color: Colors.white,
                                          image: DecorationImage(
                                              image: AssetImage('assets/image/rolls/rolls-side-view.png'))),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                  flex: 1,
                                                  child: ListTile(
                                                    contentPadding: EdgeInsets.symmetric(horizontal: 15),
                                                    //horizontalTitleGap: .5,
                                                    minLeadingWidth: .5,
                                                    leading: Icon(Icons.person,color: PrimaryColor),
                                                    title: Text(jsonList[index]['passengers_capacity'].toString(),style: TextStyle(color: Colors.white),),
                                                  )),
                                              Expanded(
                                                  flex: 4,
                                                  child: ListTile(
                                                    minLeadingWidth: 1,
                                                    leading: Icon(Icons.filter_list,color: PrimaryColor),
                                                    title: Text(jsonList[index]['gear'],style: TextStyle(color: Colors.white)),
                                                  ))
                                            ],
                                          ),
                                        ),

                                        Text('\$  ',style: TextStyle(color: PrimaryColor,fontSize: 22),),
                                        Text(jsonList[index]['rent_price'].toString() +' /',style: TextStyle(color: Colors.white,fontSize: 20),),
                                        Text('day',style: TextStyle(color: Colors.grey),),
                                        SizedBox(width: 20,)
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        itemCount: jsonList == null ? 0 :  jsonList.length,
                        padding: EdgeInsets.all(10),

                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        // bottomNavigationBar:BottomNavigationBar(
        //
        //
        //     unselectedItemColor: Color(0xff7b888f),
        //     elevation: 0,
        //   items: [
        //     BottomNavigationBarItem(icon: Icon(Icons.home,color: PrimaryColor),label: 'Home',backgroundColor:Color(0xff272f35),),
        //     BottomNavigationBarItem(icon: Icon(Icons.calendar_month,),label: ''),
        //     BottomNavigationBarItem(icon: Icon(Icons.add_alert_rounded,),label: ''),
        //     BottomNavigationBarItem(icon: Icon(Icons.person,),label: ''),
        //
        //
        //   ],) ,
      ),
    );
  }
}

class HeaderText extends StatelessWidget {
  const HeaderText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Serch For A Car \n And Ride Your Passion',
      style:
          TextStyle(fontSize: 28, fontWeight: FontWeight.bold, wordSpacing: 8),
    );
  }
}

class searchBar extends StatelessWidget {
  const searchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          width: 300,
          height: 45,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.black26, width: 2)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Icon(Icons.search, color: Colors.black26),
              Text(
                'Search For Your Passion ',
                style: TextStyle(color: Colors.black54),
              )
            ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: kPrimaryColor,
            ),
            child: Icon(Icons.bubble_chart_outlined),
          ),
        )
      ],
    );
  }
}

class mainPageHeader extends StatelessWidget {
  const mainPageHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Welcome To ',
                    style: TextStyle(color: Colors.black26, fontSize: 20)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on_rounded,
                          color: kPrimaryColor,
                          size: 25,
                        ),
                        Container(
                          width: 200,
                          height: 95,
                          child: SvgPicture.asset('assets/image/gv.svg'),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: CircleAvatar(
                      radius: 20,
                      child: Icon(Icons.settings,color: Colors.black),
                      backgroundColor: kPrimaryColor,
                      foregroundColor: kPrimaryColor,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

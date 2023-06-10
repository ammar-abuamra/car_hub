


import 'package:flutter/material.dart';

import '../../const/colors.dart';
import 'BookedCars.dart';
import 'MainScreen.dart';
import 'Notefactions.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Properties & Variables needed

  int currentTab = 0; // to keep track of active tab index
  final List<Widget> screens = [
    MainScreen(),

  ]; // to store nested tabs
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = MainScreen(); // Our first view in viewport

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff10181e) ,
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: currentTab == 0 ? PrimaryColor : Colors.grey,
        child: Icon(Icons.home),
        onPressed: () {
          setState(() {
            currentScreen =
                MainScreen(); // if user taps on this dashboard tab will be active
            currentTab = 0;
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: MainBottomNav(),
    );
  }

  BottomAppBar MainBottomNav() {
    return BottomAppBar(
      color:  Color(0xff10181e),
      shape: CircularNotchedRectangle(),
      //notchMargin: 30,
      child: Container(
        decoration: BoxDecoration(

            color:Color(0xff272f35),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
        ),
       
        height: 55,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen =
                          BokkedCars(); // if user taps on this dashboard tab will be active
                      currentTab = 1;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                       Icons.calendar_month,
                        color: currentTab == 1 ? PrimaryColor : Colors.grey,
                      ),
                      Text(
                       'Booked Cars',
                        style: TextStyle(
                          color: currentTab == 1 ? PrimaryColor : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),// booked car on nav bar
              ],
            ),

            // Right Tab bar icons

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen =
                          notification(); // if user taps on this dashboard tab will be active
                      currentTab = 4;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.notifications_active,
                        color: currentTab == 4 ? PrimaryColor : Colors.grey,
                      ),
                      Text(
                      'Notifications',
                        style: TextStyle(
                          color: currentTab == 4 ? PrimaryColor : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:car_hub/const/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffffffff),
        body: Column(
          children: [
            mainPageHeader(),
            HeaderText(),
            searchBar(),
            Container(
              height: MediaQuery.of(context).size.height / 1.85,
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
                    height: 7,width: 70,decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(10)),),

                  
                ],
              ),
            )
          ],
        ),
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
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          width: 260,
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
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: kPrimaryColor,
          ),
          child: Icon(Icons.bubble_chart_outlined),
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
          padding: const EdgeInsets.all(10.0),
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
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('assets/image/jp.jpg'),
                      backgroundColor: kPrimaryColor,
                      foregroundColor: kPrimaryColor,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

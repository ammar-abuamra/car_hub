import 'package:car_hub/const/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../Widgets/Widgets.dart';

class test extends StatefulWidget {
  const test({Key? key}) : super(key: key);

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: CustomScrollView(
      slivers: [
       SliverAppBar(
         backgroundColor: Colors.blueAccent.withOpacity(.5),

         expandedHeight: 290,
           flexibleSpace:  Column(children: [
           mainPageHeader(),
           HeaderText(),
           searchBar(),
         ]),
       ),
        SliverToBoxAdapter(child: SizedBox(height: 20,),),
        SliverToBoxAdapter(
          child:                     Container(
            height: 400,
            child: ListView.separated(
              shrinkWrap: true,primary: false,
              separatorBuilder: (context, index) => Divider(),
              itemBuilder: (context, index) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
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
                                'Covert 711 SX ',
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
                                'Coupe',
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
                                  image: AssetImage('assets/image/corvet.png'))),
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
                                        title: Text('2',style: TextStyle(color: Colors.white),),
                                      )),
                                  Expanded(
                                      flex: 4,
                                      child: ListTile(
                                        minLeadingWidth: 1,
                                        leading: Icon(Icons.filter_list,color: PrimaryColor),
                                        title: Text('Manual',style: TextStyle(color: Colors.white)),
                                      ))
                                ],
                              ),
                            ),

                            Text('\$  ',style: TextStyle(color: PrimaryColor,fontSize: 22),),
                            Text('400 /',style: TextStyle(color: Colors.white,fontSize: 20),),
                            Text('day',style: TextStyle(color: Colors.grey),),
                            SizedBox(width: 20,)
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              itemCount: 5,
              padding: EdgeInsets.all(10),

            ),
          )
          ,
        ),


      ],
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

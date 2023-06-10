


import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../const/colors.dart';
import 'BookedCars.dart';

class notification extends StatefulWidget {
  const notification({Key? key}) : super(key: key);

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xff10181e) ,
      appBar: AppBar(

        centerTitle: true,
        title: Text('Notifactios',style: TextStyle(color: kPrimaryColor)),
      ),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        Padding(
        padding: const EdgeInsets.all(8.0),
        child: Slidable(
            startActionPane: ActionPane(motion: StretchMotion(), children: [
              SlidableAction(
                onPressed: (Ctx) {},
                backgroundColor: Colors.greenAccent,
                icon: Icons.recycling_outlined,
                label: 'rebook',
                borderRadius: BorderRadius.circular(15),
                autoClose: true,
              )
            ]),
            endActionPane: ActionPane(motion: StretchMotion(), children: [
              SlidableAction(
                onPressed: (Ctx) {},
                backgroundColor: Colors.red,
                icon: Icons.delete,
                label: 'delete',
                borderRadius: BorderRadius.circular(15),
              )
            ]),
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 3, horizontal: 5),
              decoration: BoxDecoration(
                  color: Color(0xffedb54f),
                  borderRadius: BorderRadiusDirectional.circular(8)),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 8,
                ),

                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '1 day left for Your Booked period to expierd',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: SecondryColor,
                          fontSize: 18),
                    ),

                  ],
                ),
              ),
            )),
      )

          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'dart:convert';
import '../../Widgets/Widgets.dart';
import '../../const/colors.dart';

class BokkedCars extends StatefulWidget {
  const BokkedCars({Key? key}) : super(key: key);

  @override
  State<BokkedCars> createState() => _BokkedCarsState();
}

class _BokkedCarsState extends State<BokkedCars> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xff10181e) ,
      appBar: AppBar(

        centerTitle: true,
        title: Text('Booked Cars',style: TextStyle(color: kPrimaryColor)),
      ),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SlidableCard(),
            SlidableCard(),
            SlidableCard(),
          ],
        ),
      ),
    );
  }
}

class SlidableCard extends StatelessWidget {
  const SlidableCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              leading: Container(
                height: MediaQuery.of(context).size.height * 2,
                width: MediaQuery.of(context).size.width * .21,
                decoration: BoxDecoration(
                    //color: Colors.black,
                    borderRadius: BorderRadiusDirectional.circular(8),
                    image: DecorationImage(
                        image: AssetImage('assets/image/corvetlogo.png'),
                        fit: BoxFit.fill)),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Corvet cvx ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: SecondryColor,
                        fontSize: 18),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Booked Tell \n 23-5-2023',
                    style: TextStyle(color: Colors.black87),
                  )
                ],
              ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Rent Budget',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: SecondryColor,
                        fontSize: 18),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '\$ 400/day',
                    style: TextStyle(color: Colors.black87),
                  )
                ],
              ),
            ),
          )),
    );
  }
}

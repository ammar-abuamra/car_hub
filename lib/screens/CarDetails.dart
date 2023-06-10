import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../const/colors.dart';
import 'MainScreen/Booking.dart';

class CarDetails extends StatefulWidget {
  const CarDetails({Key? key}) : super(key: key);

  @override
  State<CarDetails> createState() => _CarDetailsState();
}

class _CarDetailsState extends State<CarDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SecondryColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Corvet'),
        actions: [Icon(Icons.more_horiz)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              // padding: EdgeInsets.all(5),
              height: 250,
              width: double.infinity,
              color: SecondryColor,
              child: CarouselSlider(
                options: CarouselOptions(height: 400.0),
                items: [1, 2, 3, 4, 5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                            color: Color(0xff272f35),
                            image: DecorationImage(
                                image: AssetImage('assets/image/corvet.png'),
                                fit: BoxFit.contain),
                            borderRadius: BorderRadius.circular(15)),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
            Container(
              height: 215,
              width: double.infinity,
              color: SecondryColor,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Car Specs',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.w600)),
                      ),
                      //Text('see more',style: TextStyle(fontSize: 15,color: Colors.white,)),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CarSpecsContainer(
                            header: 'Top Speed', center: '450', bottom: 'km'),
                        CarSpecsContainer(
                            header: 'Top Speed', center: '450', bottom: 'km'),
                        CarSpecsContainer(
                            header: 'Top Speed', center: '450', bottom: 'km')
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 300,
              width: double.infinity,
              color: SecondryColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Car Info',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.w600)),
                  ),
                  carInfoRow(
                      title: '2 person',
                      icon: Icons.person,
                      icon2: Icons.car_crash,
                      title2: '2 Doors'),
                  carInfoRow(
                      title: 'Air Conditon',
                      icon: Icons.ac_unit,
                      icon2: Icons.precision_manufacturing,
                      title2: 'Manual'),
                  carInfoRow(
                      title: 'Full to Full',
                      icon: Icons.local_gas_station_rounded,
                      icon2: Icons.local_parking,
                      title2: 'Auto Park'),
                  SizedBox(height: 25),
                  InkWell(
                      onTap: (){ Navigator.of(context).push(MaterialPageRoute(builder: (_) => Booking()));},
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                          child: Text(
                        'Book Now ',
                        style: TextStyle(
                            fontSize: 25,
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
      ),
    );
  }
}

class CarSpecsContainer extends StatelessWidget {
  CarSpecsContainer({
    required this.center,
    required this.bottom,
    required this.header,
    Key? key,
  }) : super(key: key);

  String header;
  String center;
  String bottom;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 160,
      height: 150,
      decoration: BoxDecoration(
          color: Color(0xff272f35), borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(header,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white)),
          Text(center,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor)),
          Text(bottom, style: TextStyle(fontSize: 15, color: Colors.grey)),
        ],
      ),
    );
  }
}

class carInfoRow extends StatelessWidget {
  carInfoRow({
    required this.title2,
    required this.icon2,
    required this.title,
    required this.icon,
    Key? key,
  }) : super(key: key);
  String title;
  IconData icon;
  String title2;
  IconData icon2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon, color: kPrimaryColor, size: 35),
              Text(
                title,
                style: TextStyle(color: Colors.white70, fontSize: 25),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(icon2, size: 35, color: kPrimaryColor),
              Text(title2, style: TextStyle(color: Colors.white70, fontSize: 25))
            ],
          )
        ],
      ),
    );
  }
}

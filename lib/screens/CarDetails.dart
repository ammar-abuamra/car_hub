import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarDetails extends StatefulWidget {
  const CarDetails({Key? key}) : super(key: key);

  @override
  State<CarDetails> createState() => _CarDetailsState();
}

class _CarDetailsState extends State<CarDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Corvet'),
        actions: [Icon(Icons.more_horiz)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              color: Colors.lime,
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
                                image: AssetImage('assets/image/corvet.png'))),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
            Container(
              height: 250,
              width: double.infinity,
              color: Colors.amber,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('car info'),
                      Text('see more'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          width: 160,
                          height: 150,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Top Speed',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500)),
                              Text('450',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                              Text('km',style: TextStyle(fontSize: 15,color: Colors.grey)),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          width: 160,
                          height: 150,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              Text('top speed'),
                              Text('450'),
                              Text('km'),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          width: 160,
                          height: 150,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              Text('top speed'),
                              Text('450'),
                              Text('km'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 250,
              width: double.infinity,
              color: Colors.lime,
            ),
          ],
        ),
      ),
    );
  }
}

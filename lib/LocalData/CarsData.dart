import 'dart:ffi';

import 'package:flutter/material.dart';


class  CarsData {
  final String CarName;
  final String Classification;
  final int passengers_capacity;
  final int Rent_Price ;
  final String Side_Image;
  final String Front_Image;
  final String Interior_Image;
  final String Gear;

  const  CarsData(this.CarName, this.Classification, this.passengers_capacity, this.Rent_Price, this.Side_Image, this.Front_Image, this.Interior_Image, this.Gear, );
}


//
// class carsData {
//   static const  Data = < CarsData>[
//     CarsData('Corvet Zr1', 'Coupe', 2, 400, 'assets/image/corvet/corvet-side-view.png', 'corvet-front-vierw.png', 'assets/image/corvet/corvet-intereor.png','Manual'),
//     CarsData('Rolls Royce Warith', '4 Doors', 5, 1300, 'assets/image/rolls/rolls-side-view.png', 'assets/image/rolls/rolls-front-view.png', 'assets/image/rolls/rolls-interior.png','Auto'),
//     CarsData('Lamborghini Urus', 'Suv', 5, 900, 'assets/image/urus/urise-side-view.png', 'assets/image/urus/urus-front-view-removebg-preview.png', 'assets/image/urus/urus-inside-viewpreview.png','Top Tornic'),
//     CarsData('Maclaren 720 s ', 'Super Car', 2, 1800, 'assets/image/maclern/maclern-side-view.png', 'assets/image/maclern/maclern-front-view.png', 'assets/image/maclern/maclern-ineteror.png','Top Tronic'),
//
//   ];
// }

List<CarsData>CArsData =[
  CarsData('Corvet Zr1', 'Coupe', 2, 400, 'assets/image/corvet/corvet-side-view.png', 'assets/image/corvet/corvet-front-vierw.png', 'assets/image/corvet/corvet-intereor.png','Manual'),
  CarsData('Rolls Royce Warith', '4 Doors', 5, 1300, 'assets/image/rolls/rolls-side-view.png', 'assets/image/rolls/rolls-front-view.png', 'assets/image/rolls/rolls-interior.png','Auto'),
  CarsData('Lamborghini Urus', 'Suv', 5, 900, 'assets/image/urus/urise-side-view.png', 'assets/image/urus/urus-front-view-removebg-preview.png', 'assets/image/urus/urus-inside-viewpreview.png','Top Tornic'),
  CarsData('Maclaren 720 s ', 'Super Car', 2, 1800, 'assets/image/maclern/maclern-side-view.png', 'assets/image/maclern/maclern-front-view.png', 'assets/image/maclern/maclern-ineteror.png','Top Tronic'),


];
import 'package:flutter/material.dart';

class paketAlam {
  final String title;
  final double price;
  final String path;
  final String color;
  final String gearbox;
  final String fuel;
  final String brand;

  paketAlam(
      {required this.title,
      required this.price,
      required this.path,
      required this.color,
      required this.gearbox,
      required this.fuel,
      required this.brand});
}

alamList semua_alam = alamList(alam: [
  paketAlam(
      title: 'Honda Civic 2018',
      price: 123,
      color: 'Grey',
      gearbox: '4',
      fuel: '4L',
      brand: 'Honda',
      path: 'assets/images/slider/beleq.jpg'),
  paketAlam(
      title: 'Honda Civic 2018',
      price: 123,
      color: 'Grey',
      gearbox: '4',
      fuel: '4L',
      brand: 'Honda',
      path: 'assets/images/slider/beleq.jpg'),
  paketAlam(
      title: 'Honda Civic 2018',
      price: 123,
      color: 'Grey',
      gearbox: '4',
      fuel: '4L',
      brand: 'Honda',
      path: 'assets/images/slider/beleq.jpg'),
]);

class alamList {
  List<paketAlam> alam;

  alamList({this.alam});
}

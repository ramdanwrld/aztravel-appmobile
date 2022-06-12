import 'package:flutter/material.dart';
import 'package:flutter_application_1/pemesanan/alam/Detail_alam.dart';
import 'package:flutter_application_1/pemesanan/alam/Spesifik_alam.dart';
import 'package:flutter_application_1/pemesanan/alam/Spek_alam.dart';
import 'Detail_alam.dart';
import 'Spek_alam.dart';

class alam_tampilan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: semua_alam.alam.length,
      itemBuilder: (ctx, i) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => DetailAlam(
                  title: semua_alam.alam[i].title,
                  brand: semua_alam.alam[i].brand,
                  fuel: semua_alam.alam[i].fuel,
                  price: semua_alam.alam[i].price,
                  path: semua_alam.alam[i].path,
                  gearbox: semua_alam.alam[i].gearbox,
                  color: semua_alam.alam[i].color,
                ),
              ),
            );
          },
          child: Container(
              margin: EdgeInsets.only(
                  top: i.isEven ? 0 : 10, bottom: i.isEven ? 10 : 0),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  boxShadow: [
                    BoxShadow(color: Colors.red, blurRadius: 5, spreadRadius: 1)
                  ]),
              child: Column(
                children: [
                  Hero(
                      tag: semua_alam.alam[i].title,
                      child: Image.asset(semua_alam.alam[i].path)),
                  Text(
                    semua_alam.alam[i].title,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    (semua_alam.alam[i].price).toString(),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text('per month')
                ],
              )),
        ),
      ),
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    );
  }
}

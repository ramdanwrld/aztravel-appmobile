import 'package:flutter/material.dart';

class SpesifikAlam extends StatelessWidget {
  final double price;
  final String name;
  final String name2;

  SpesifikAlam({required this.price, required this.name, required this.name2});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: price == null ? 70 : 100,
      width: 360,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 1),
          borderRadius: BorderRadius.circular(10)),
      child: price == null
          ? Column(
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  name2,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            )
          : Column(
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  price.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(name2)
              ],
            ),
    );
  }
}
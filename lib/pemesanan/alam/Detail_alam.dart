import 'package:flutter/material.dart';
import 'package:flutter_application_1/pemesanan/alam/Spesifik_alam.dart';

void _showSimpleDialog(context) {
  showDialog(
    context: context,
    builder: (context) {
      return SimpleDialog(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Permintaan Terkirim",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ),
        ],
      );
    },
  );
}

class DetailAlam extends StatelessWidget {
  final String title;
  final double price;
  final String color;
  final String gearbox;
  final String fuel;
  final String brand;
  final String path;

  DetailAlam(
      {required this.title,
      required this.price,
      required this.color,
      required this.gearbox,
      required this.fuel,
      required this.brand,
      required this.path});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 41, 16, 95),
        title: Text("Paket Alam 1"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          Text(
            brand,
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          Hero(tag: title, child: Image.asset(path)),
          Text(
            'Deskripsi Paket',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            height: 100,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
              color: Colors.grey,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 0,
                  spreadRadius: 0,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            height: 100,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
              color: Colors.grey,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 0,
                  spreadRadius: 0,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          RaisedButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            onPressed: () {
              _showSimpleDialog(context);
            },
            padding: EdgeInsets.all(10.0),
            color: Colors.blueAccent,
            child: Text(
              'Pesan Paket',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}

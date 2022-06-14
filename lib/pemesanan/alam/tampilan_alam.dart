import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pemesanan/alam/alam.dart';

class tampilan_alam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 41, 16, 95),
        title: Text("GoTrav"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
          ),
          Text(
            'Paket Alam Yang Tersedia',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: alam_tampilan(),
          ),
        ],
      ),
    );
  }
}

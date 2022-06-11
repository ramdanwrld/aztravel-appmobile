import 'package:flutter/material.dart';
import 'package:flutter_application_1/bottom/beranda.dart';

class eventpage extends StatefulWidget {
  const eventpage({Key? key}) : super(key: key);

  @override
  State<eventpage> createState() => _eventpageState();
}

class _eventpageState extends State<eventpage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color.fromRGBO(44, 4, 131, 1),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return beranda();
            }));
          }, // Handle your on tap here.
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: const Text('Pemesanan Paket Event'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 41, 16, 95),
      ),
      body: Column(
        children: [
          Container(
            child: Text(
              '\n      Paket Alam 1\n\n      Pantai Sengigi    Gunung Rinjani\n\n      Bukit Merese      Pantai Ampenan\n\n\n     Lokasi : Lombok     Harga : Rp. 422.000 rupiah',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            margin: const EdgeInsets.all(16),
            height: 200,
            width: 400,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          Container(
            child: Text(
              '\n      Paket Alam 2\n\n      Pantai Pandanan    Desa Sade\n\n      Pantai Nipah          Tiu Kelep\n\n\n     Lokasi : Lombok     Harga : Rp. 350.000 rupiah',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            margin: const EdgeInsets.all(16),
            height: 200,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

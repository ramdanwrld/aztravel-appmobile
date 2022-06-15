import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/pemesanan/alam.dart';

import '../bottom/bottom_navi.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class checkout extends StatefulWidget {
  const checkout({Key? key}) : super(key: key);

  @override
  State<checkout> createState() => _checkoutState();
}

class _checkoutState extends State<checkout> {
  final List<String> items = [
    'Transfer',
  ];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(44, 4, 131, 1),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return MyApp();
            }));
          }, // Handle your on tap here.
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: const Text('Checkout Pemesanan'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 41, 16, 95),
      ),
      body: Column(children: [
        Container(
          margin: const EdgeInsets.only(top: 30, left: 30.0, right: 30.0),
          alignment: Alignment.center,
          width: 600,
          height: 700,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Detail Pemesanan",
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Paket Alam 1",
                        hintStyle: const TextStyle(color: Colors.grey),
                        labelText: "Paket Alam 1",
                        labelStyle: const TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(0.0)),
                        fillColor: Colors.black,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0.0),
                          borderSide: const BorderSide(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Identitas Lengkap",
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Nama Lengkap",
                        hintStyle: const TextStyle(color: Colors.grey),
                        labelText: "Nama Lengkap",
                        labelStyle: const TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(0.0)),
                        fillColor: Colors.black,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0.0),
                          borderSide: const BorderSide(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "KTP",
                        hintStyle: const TextStyle(color: Colors.grey),
                        labelText: "KTP",
                        labelStyle: const TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(0.0)),
                        fillColor: Colors.black,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0.0),
                          borderSide: const BorderSide(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "NO HP",
                        hintStyle: const TextStyle(color: Colors.grey),
                        labelText: "NO HP",
                        labelStyle: const TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(0.0)),
                        fillColor: Colors.black,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0.0),
                          borderSide: const BorderSide(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Tanggal Keberangkatan",
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Nama Lengkap",
                        hintStyle: const TextStyle(color: Colors.grey),
                        labelText: "Nama Lengkap",
                        labelStyle: const TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(0.0)),
                        fillColor: Colors.black,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0.0),
                          borderSide: const BorderSide(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Metode Pembayaran",
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    DropdownButtonHideUnderline(
                      child: DropdownButton2(
                        hint: Text(
                          'Transfer',
                          style: TextStyle(
                            fontSize: 17,
                            color: Theme.of(context).hintColor,
                          ),
                        ),
                        items: items
                            .map((item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: const TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ))
                            .toList(),
                        value: selectedValue,
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value as String;
                          });
                        },
                        buttonHeight: 40,
                        buttonWidth: 140,
                        itemHeight: 40,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MaterialButton(
                      padding: EdgeInsets.all(20),
                      minWidth: 250,
                      color: Colors.orange,
                      child: Text(
                        "Pesan Paket",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => checkout()));
                      },
                    ),
                  ],
                ),
              ]),
        )
      ]),
    );
  }
}

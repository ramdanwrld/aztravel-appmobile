import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/login_register/signup.dart';
import 'package:flutter_application_1/bottom/beranda.dart';
import 'package:flutter_application_1/bottom/bottom_navi.dart';
import 'package:flutter_application_1/bottom/akun.dart';
import 'package:flutter_application_1/main.dart';
import 'package:progress_dialog/progress_dialog.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../bottom/bottom_navi.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_application_1/bottom/bottom_navi.dart';

class edit_profil_akun extends StatefulWidget {
  const edit_profil_akun({Key? key}) : super(key: key);

  @override
  State<edit_profil_akun> createState() => _edit_profil_akunState();
}

class _edit_profil_akunState extends State<edit_profil_akun> {
  TextEditingController txtEmail = new TextEditingController();
  TextEditingController txtPassword = new TextEditingController();
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 44, 4, 131),
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return BottomNavi();
              }));
            }, // Handle your on tap here.
            icon: Icon(Icons.arrow_back_ios),
          ),
          title: const Text('Edit Profil'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 41, 16, 95),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Edit profil akun\n',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                width: 350,
                color: Colors.white,
                child: TextFormField(
                  controller: txtEmail,
                  decoration: InputDecoration(
                      hintText: "Masukkan nama", border: InputBorder.none),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(5),
                width: 350,
                color: Colors.white,
                child: TextFormField(
                  controller: txtPassword,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Masukkan email", border: InputBorder.none),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              MaterialButton(
                padding: EdgeInsets.all(20),
                minWidth: 350,
                color: Colors.green,
                child: Text(
                  "Edit",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => akun()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

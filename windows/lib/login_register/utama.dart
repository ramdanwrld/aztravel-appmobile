import 'package:flutter/material.dart';
import 'package:flutter_application_1/bottom/beranda.dart';
import 'package:flutter_application_1/login_register/login.dart';
import 'package:flutter_application_1/login_register/signup.dart';

import '../bottom/bottom_navi.dart';

class utama extends StatefulWidget {
  const utama({Key? key}) : super(key: key);

  @override
  State<utama> createState() => _utamaState();
}

class _utamaState extends State<utama> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 44, 4, 131),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(image: AssetImage('assets/images/aztravel2.png')),
              SizedBox(
                height: 60,
              ),
              Text("Selamat Datang di Aplikasi AZ TRAVEL",
                  style: TextStyle(color: Colors.white, fontSize: 22)),
              SizedBox(
                height: 10,
              ),
              Text(
                "Solusi Perjalanan Wisata Anda",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              SizedBox(
                height: 18,
              ),
              MaterialButton(
                minWidth: 210,
                color: Colors.white,
                textColor: Colors.black,
                child: Text(
                  "Register",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUp()));
                },
              ),
              TextButton(
                child: Text(
                  "Log In",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => login()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

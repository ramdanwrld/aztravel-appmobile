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
                height: 5,
              ),
              SizedBox(
                height: 18,
              ),
              MaterialButton(
                minWidth: 210,
                color: Colors.orange,
                textColor: Colors.white,
                child: Text(
                  "Login",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => login()));
                },
              ),
              SizedBox(
                height: 18,
              ),
              MaterialButton(
                minWidth: 210,
                color: Colors.orange,
                textColor: Colors.white,
                child: Text(
                  "Register",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUp()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

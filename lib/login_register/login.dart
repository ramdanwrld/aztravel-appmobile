import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/login_register/signup.dart';
import 'package:flutter_application_1/bottom/beranda.dart';
import 'package:flutter_application_1/bottom/bottom_navi.dart';
import 'package:progress_dialog/progress_dialog.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../bottom/bottom_navi.dart';
import 'package:http/http.dart' as http;

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController txtEmail = new TextEditingController();
  TextEditingController txtPassword = new TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 44, 4, 131),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(5),
              width: 250,
              color: Colors.white,
              child: TextFormField(
                controller: txtEmail,
                decoration: InputDecoration(
                    hintText: "Email", border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(5),
              width: 250,
              color: Colors.white,
              child: TextFormField(
                controller: txtPassword,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Password", border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              padding: EdgeInsets.all(20),
              minWidth: 260,
              color: Colors.orange,
              child: Text(
                "Login",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => BottomNavi()));
                this._doLogin();
              },
            ),
            TextButton(
              child: Text(
                "Belum Punya Akun? Daftar",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SignUp()));
              },
            )
          ],
        ),
      ),
    );
  }

  Future _doLogin() async {
    if (txtEmail.text.isEmpty || txtPassword.text.isEmpty) {
      Alert(context: context, title: "Data Tidak Benar", type: AlertType.error)
          .show();
      return;
    }
    ProgressDialog progressDialog = ProgressDialog(context);
    progressDialog.style(message: "Tunggu...");
    progressDialog.show();
    var url = 'http://127.0.0.1:8000/api/login';
    final response = await http.post(Uri.parse(url), body: {
      'Email': txtEmail.text,
      'Password': txtPassword.text,
    }, headers: {
      'Accept': 'application/json'
    });
    progressDialog.hide();
    if (response.statusCode == 200) {
      Alert(context: context, title: "Login Berhasil", type: AlertType.success)
          .show();
    } else {
      Alert(context: context, title: "Login Gagal", type: AlertType.error)
          .show();
    }
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/login_register/login.dart';
import 'package:progress_dialog/progress_dialog.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:http/http.dart' as http;
// import 'package:flutter_application_1/api/api.dart';
import 'dart:convert';

void main() => runApp(SignUp());

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController txtName = new TextEditingController();
  TextEditingController txtEmail = new TextEditingController();
  TextEditingController txtPassword = new TextEditingController();

  _register() async {
    var data = {
      'name': txtName.text,
      'email': txtEmail.text,
      'password': txtPassword.text,
    };

    // var res = await CallApi().postData(data, 'register');
    // var body = json.decode(res.body);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 44, 4, 131),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              width: 250,
              color: Colors.white,
              child: TextFormField(
                controller: txtName,
                decoration: InputDecoration(
                    hintText: "Nama Lengkap",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: 250,
              color: Colors.white,
              child: TextFormField(
                controller: txtEmail,
                decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: 250,
              color: Colors.white,
              child: TextFormField(
                controller: txtPassword,
                decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              padding: EdgeInsets.all(20),
              minWidth: 250,
              child: Text(
                "REGISTER",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                this._doDaftar();
              },
              color: Colors.orange,
            ),
            TextButton(
              child: Text("Sudah Punya Akun? Login",
                  style: TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => login()));
              },
            )
          ],
        ),
      ),
    );
  }

  Future _doDaftar() async {
    String name = txtName.text;
    String email = txtEmail.text;
    String password = txtPassword.text;
    if (name.isEmpty || email.isEmpty) {
      Alert(
              context: context,
              title: "Data tidak boleh kosong",
              type: AlertType.error)
          .show();
      return;
    }
    ProgressDialog progressDialog = ProgressDialog(context);
    progressDialog.style(message: "Tunggu...");
    progressDialog.show();
    var url = 'http://127.0.0.1:8000/api/register';
    final response = await http.post(Uri.parse(url), body: {
      'name': name,
      'email': email,
      'password': password,
    }, headers: {
      'Accept': 'application/json'
    });
    progressDialog.hide();
    if (response.statusCode == 401) {
      Alert(
          context: context,
          title: "Register Berhasil",
          type: AlertType.success,
          buttons: [
            DialogButton(
              child: Text("Lanjut Login"),
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);
              },
            ),
          ]).show();
    } else {
      Alert(context: context, title: "Register Gagal", type: AlertType.error)
          .show();
    }
  }
}

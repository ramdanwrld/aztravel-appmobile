import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/login_register/utama.dart';
import 'package:progress_dialog/progress_dialog.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:flutter_application_1/login_register/login.dart';
import 'package:flutter_application_1/bottom/edit_profil_akun.dart';
import 'package:http/http.dart' as http;

import '../bottom/bottom_navi.dart';

class akun extends StatefulWidget {
  const akun({Key? key}) : super(key: key);

  @override
  State<akun> createState() => _akunState();
}

class _akunState extends State<akun> {
  TextEditingController txtEmail = new TextEditingController();
  TextEditingController txtPassword = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 44, 4, 131),
        appBar: AppBar(
          title: const Text('Profil Akun'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 41, 16, 95),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage('assets/images/user.png')),
              Text(
                'User',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
              ),
              Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                      leading: Icon(
                        Icons.person,
                        color: Color.fromARGB(255, 44, 4, 131),
                      ),
                      title: Text(
                        'User',
                        style: TextStyle(
                            color: Color.fromARGB(255, 44, 4, 131),
                            fontSize: 20.0),
                      ))),
              Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Color.fromARGB(255, 44, 4, 131),
                      ),
                      title: Text(
                        'user@gmail.com',
                        style: TextStyle(
                            color: Color.fromARGB(255, 44, 4, 131),
                            fontSize: 20.0),
                      ))),
              Card(
                  color: Colors.orange,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    title: Text(
                      '          Edit Profil',
                      style: TextStyle(color: Colors.black, fontSize: 20.0),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => edit_profil_akun()));
                    },
                  )),
              Card(
                  color: Colors.red,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.logout,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Log Out',
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => utama()));
                    },
                  )),
            ],
          ),
        ),
        drawer: Drawer(
            child: ListView(children: <Widget>[
          UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 41, 16, 95),
              ),
              accountName: Text("User"),
              accountEmail: Text("user@gmail.com"),
              currentAccountPicture: GestureDetector(
                  onTap: () {},
                  child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/user.png")))),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text(
              "Logout",
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => utama()));
            },
          ),
        ])),
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
      'email': txtEmail.text,
      'password': txtPassword.text,
    }, headers: {
      'Accept': 'application/json'
    });
    progressDialog.hide();
    if (response.statusCode == 200) {
      Alert(
          context: context,
          title: "Login Berhasil",
          type: AlertType.success,
          buttons: [
            DialogButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BottomNavi()));
              },
            ),
          ]).show();
    } else {
      Alert(
        context: context,
        title: "Login Gagal",
        type: AlertType.error,
      ).show();
    }
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../login_register/utama.dart';

class kontak extends StatefulWidget {
  const kontak({Key? key}) : super(key: key);

  @override
  State<kontak> createState() => _kontakState();
}

class _kontakState extends State<kontak> {
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
              Image(image: AssetImage('assets/images/aztravel2.png')),
              Text(
                'Apabila ada yang ingin ditanyakan \n      Silahkan Hubungi Kami di',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
              ),
              Card(
                  color: Colors.green,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                      leading: Icon(
                        Icons.call,
                        color: Color.fromARGB(255, 44, 4, 131),
                      ),
                      title: Text(
                        '0265-1234-56789',
                        style: TextStyle(
                            color: Color.fromARGB(255, 44, 4, 131),
                            fontSize: 20.0),
                      ))),
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
}

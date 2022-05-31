import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class akun extends StatefulWidget {
  const akun({Key? key}) : super(key: key);

  @override
  State<akun> createState() => _akunState();
}

class _akunState extends State<akun> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 44, 4, 131),
      appBar: AppBar(
        title: const Text('Profil Akun'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 41, 16, 95),
      ),
      body: Stack(children: [
        Container(
          height: 170,
          width: double.infinity,
          child: Row(
            children: [
              Container(
                width: 40,
                height: 200,
              ),
              Container(
                  child: Container(
                      child:
                          Image(image: AssetImage('assets/images/akun.png')))),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 150, left: 45.0, right: 30.0),
          alignment: Alignment.center,
          width: 300,
          height: 400,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ]),
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
            // Update the state of the app
            // ...
            // Then close the drawer
            Navigator.pop(context);
          },
        ),
      ])),
    );
  }
}

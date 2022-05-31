import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class kontak extends StatefulWidget {
  const kontak({Key? key}) : super(key: key);

  @override
  State<kontak> createState() => _kontakState();
}

class _kontakState extends State<kontak> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 44, 4, 131),
      appBar: AppBar(
        title: const Text('Kontak Travel'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 41, 16, 95),
      ),
      body: new Center(
        child: new Text(
          'Halaman Kontak Travel',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
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

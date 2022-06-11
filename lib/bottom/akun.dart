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
                        Icons.phone,
                        color: Color.fromARGB(255, 44, 4, 131),
                      ),
                      title: Text(
                        '081234567854',
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
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
        ])),
      ),
    );
  }
}

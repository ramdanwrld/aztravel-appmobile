import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class beranda extends StatefulWidget {
  const beranda({Key? key}) : super(key: key);

  @override
  State<beranda> createState() => _berandaState();
}

class _berandaState extends State<beranda> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 44, 4, 131),
      appBar: AppBar(
        title: const Text('Beranda'),
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
                width: 11,
                height: 150,
              ),
              Container(
                  child: Container(
                      child: Image(
                          image: AssetImage('assets/images/aztravel.png')))),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 150, left: 45.0, right: 30.0),
          alignment: Alignment.center,
          width: 300,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            SizedBox.fromSize(
              size: Size(56, 56),
              child: Material(
                child: InkWell(
                  splashColor: Color.fromRGBO(100, 39, 228, 1),
                  onTap: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.location_on_outlined, size: 40), // <-- Icon
                      Text("ALAM"), // <-- Text
                    ],
                  ),
                ),
              ),
            ),
            SizedBox.fromSize(
              size: Size(56, 56),
              child: Material(
                child: InkWell(
                  splashColor: Color.fromRGBO(100, 39, 228, 1),
                  onTap: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.fastfood_sharp, size: 40), // <-- Icon
                      Text("KULINER"), // <-- Text
                    ],
                  ),
                ),
              ),
            ),
            SizedBox.fromSize(
              size: Size(56, 56),
              child: Material(
                child: InkWell(
                  splashColor: Color.fromRGBO(100, 39, 228, 1),
                  onTap: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.event, size: 40), // <-- Icon
                      Text("EVENT"), // <-- Text
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
        Container(
          margin: const EdgeInsets.only(top: 450, left: 45.0, right: 30.0),
          alignment: Alignment.center,
          width: 300,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 300, left: 45.0, right: 30.0),
          alignment: Alignment.center,
          width: 300,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
        )
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

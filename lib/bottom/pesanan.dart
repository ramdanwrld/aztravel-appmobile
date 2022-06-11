import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class pesanan extends StatefulWidget {
  const pesanan({Key? key}) : super(key: key);

  @override
  State<pesanan> createState() => _pesananState();
}

class _pesananState extends State<pesanan> {
  final List<Map<String, dynamic>> _allUsers = [
    {
      "id": 1,
      "name": "Nama Paket : Paket Alam 1\n",
      "id": "ID Pemesanan: 001",
      "harga": "Harga : Rp. 200.000"
    },
    {
      "id": 2,
      "name": "Nama Paket : Paket Kuliner 2\n",
      "id": "ID Pemesanan: 002",
      "harga": "Harga : Rp. 500.000"
    },
    {
      "id": 3,
      "name": "Nama Paket : Paket Event 5\n",
      "id": "ID Pemesanan: 003",
      "harga": "Harga : Rp. 600.000"
    },
  ];

  List<Map<String, dynamic>> _foundUsers = [];
  @override
  initState() {
    // at the beginning, all users are shown
    _foundUsers = _allUsers;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 44, 4, 131),
        appBar: AppBar(
          title: const Text('Lihat Pesanan'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 41, 16, 95),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: _foundUsers.isNotEmpty
                    ? ListView.builder(
                        itemCount: _foundUsers.length,
                        itemBuilder: (context, index) => Card(
                          color: Colors.white,
                          elevation: 4,
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: ListTile(
                            title: Text(_foundUsers[index]['name']),
                            subtitle: Text(
                                '${_foundUsers[index]["id"].toString()} \n\n'
                                '${_foundUsers[index]["harga"].toString()} rupiah\n\n'),
                          ),
                        ),
                      )
                    : const Text(
                        'No results found',
                        style: TextStyle(fontSize: 24),
                      ),
              ),
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
        ])));
  }
}

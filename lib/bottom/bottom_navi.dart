import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/bottom/beranda.dart';
import 'package:flutter_application_1/bottom/kontak.dart';
import 'package:flutter_application_1/bottom/pesanan.dart';
import 'package:flutter_application_1/bottom/akun.dart';

class BottomNavi extends StatefulWidget {
  const BottomNavi({Key? key}) : super(key: key);

  @override
  State<BottomNavi> createState() => _BottomNaviState();
}

class _BottomNaviState extends State<BottomNavi> {
  int currentIndex = 0;
  final List<Widget> body = [
    beranda(),
    kontak(),
    pesanan(),
    akun(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: body[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromRGBO(100, 39, 228, 1),
          onTap: ontap,
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              label: 'Beranda',
              activeIcon: Icon(Icons.home_outlined,
                  color: Color.fromARGB(255, 44, 4, 131)),
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.call,
                  color: Colors.black,
                ),
                label: 'Kontak Travel',
                activeIcon: Icon(Icons.call_outlined,
                    color: Color.fromARGB(255, 44, 4, 131))),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag,
                color: Colors.black,
              ),
              label: 'Lihat Pesanan',
              activeIcon: Icon(Icons.shopping_bag_outlined,
                  color: Color.fromARGB(255, 44, 4, 131)),
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_box,
                  color: Colors.black,
                ),
                label: 'Akun',
                activeIcon: Icon(Icons.account_box_outlined,
                    color: Color.fromARGB(255, 44, 4, 131)))
          ],
          selectedLabelStyle: TextStyle(fontSize: 10),
          selectedItemColor: Color.fromARGB(255, 44, 4, 131),
        ));
  }

  void ontap(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}

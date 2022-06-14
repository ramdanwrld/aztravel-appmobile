import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/pemesanan/alam.dart';
import 'package:flutter_application_1/pemesanan/event.dart';
import 'package:flutter_application_1/pemesanan/kuliner.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_application_1/bottom/pesanan.dart';
import 'package:flutter_application_1/bottom/kontak.dart';
import 'package:flutter_application_1/pemesanan/alam/tampilan_alam.dart';

class beranda extends StatefulWidget {
  const beranda({Key? key}) : super(key: key);

  @override
  State<beranda> createState() => _berandaState();
}

class _berandaState extends State<beranda> {
  final List<String> imgList = [
    'https://nicetourbali.com/wp-content/uploads/2019/07/Gili-Trawangan-Snorkeling-Day-Trip.jpg',
    'https://cf.bstatic.com/xdata/images/hotel/max1024x768/328280587.jpg?k=7eabf88f02b9406cba4a86bac288567ac122bcce8c3ab2dcc6580d481c5027e3&o=&hp=1',
    'https://disk.mediaindonesia.com/thumbs/1800x1200/news/2022/01/54f732d698290a1030dec53fb8e08b83.jpg',
    'https://cdn-cas.orami.co.id/parenting/images/shutterstock_1681180648.width-800.jpg',
    'https://pelopor.id/wp-content/uploads/2021/12/Gendang-Beleq.jpg',
    'https://cdn-2.tstatic.net/travel/foto/bank/images/nasi-puyung-lombok.jpg',
    'https://travelspromo.com/wp-content/uploads/2020/04/The-mandalika-kuta-lombok.jpg',
    'http://www.trekkingrinjani.com/images/rinjani.jpg',
    'https://1.bp.blogspot.com/-IMCxGqe8xCY/Wvw991azHoI/AAAAAAAAAjM/Hc2RjWh0tmY4Kln-1Tm8iX0wVy6ltowjQCLcBGAs/s1600/ajprioko___5AFbAFi4av___%255B1%255D.jpg',
    'https://cdn.statically.io/img/liburmulu.com/f=auto%2Cq=60/wp-content/uploads/2016/01/Ini-Indonesia-teman-Kalian-harus-bisa-menjaganya-dengan-baik-bukan-merusaknya-Setuju.jpg',
    'https://assets.promediateknologi.com/crop/0x0:0x0/x/photo/2022/03/01/2785067363.jpg',
    'https://www.indonesiatravel.news/wp-content/uploads/2021/09/IMG-20210918-WA0042.jpg',
  ];
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
          height: 240,
          width: double.infinity,
          child: Row(
            children: [
              Container(
                width: 20,
                height: 150,
              ),
              Container(
                  child: Container(
                      child: Image(
                          image: AssetImage('assets/images/aztravel2.png')))),
            ],
          ),
        ),
        Container(
            margin: const EdgeInsets.only(top: 190, left: 80.0, right: 30.0),
            child: RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan(
                    text: "   Selamat Datang, azmi !",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            )),
        Container(
          margin: const EdgeInsets.only(top: 230, left: 60.0, right: 45.0),
          alignment: Alignment.center,
          width: 300,
          height: 150,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 41, 16, 95),
            borderRadius: BorderRadius.circular(20),
          ),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            SizedBox.fromSize(
              size: Size(56, 56),
              child: Material(
                color: Color(0xFFFFFF),
                child: InkWell(
                  splashColor: Color.fromRGBO(100, 39, 228, 1),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return tampilan_alam();
                    }));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.location_on_outlined,
                        size: 40,
                        color: Colors.white,
                      ), // <-- Icon
                      Text(
                        "ALAM",
                        style: TextStyle(color: Colors.white),
                      ), // <-- Text
                    ],
                  ),
                ),
              ),
            ),
            SizedBox.fromSize(
              size: Size(56, 56),
              child: Material(
                color: Color(0xFFFFFF),
                child: InkWell(
                  splashColor: Color.fromARGB(255, 41, 16, 95),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return kulinerpage();
                    }));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.fastfood_sharp,
                        size: 40,
                        color: Colors.white,
                      ), // <-- Icon
                      Text(
                        "KULINER",
                        style: TextStyle(color: Colors.white),
                      ), // <-- Text
                    ],
                  ),
                ),
              ),
            ),
            SizedBox.fromSize(
              size: Size(56, 56),
              child: Material(
                color: Color(0xFFFFFF),
                child: InkWell(
                  splashColor: Color.fromRGBO(100, 39, 228, 1),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return eventpage();
                    }));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.event,
                        size: 40,
                        color: Colors.white,
                      ), // <-- Icon
                      Text(
                        "EVENT",
                        style: TextStyle(color: Colors.white),
                      ), // <-- Text
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
        Container(
            margin: const EdgeInsets.only(top: 400, left: 60.0, right: 30.0),
            child: RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan(
                    text: "   Foto Obyek Wisata \n",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            )),
        Container(
          margin: const EdgeInsets.only(
            top: 440,
          ),
          child: CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.0,
                viewportFraction: 0.8,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
              ),
              items: imgList
                  .map((item) => Container(
                        child: Container(
                          margin: EdgeInsets.all(5.0),
                          child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                              child: Stack(
                                children: <Widget>[
                                  Image.network(item,
                                      fit: BoxFit.cover, width: 1000.0),
                                  Positioned(
                                    bottom: 0.0,
                                    left: 0.0,
                                    right: 0.0,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Color.fromARGB(200, 0, 0, 0),
                                            Color.fromARGB(0, 0, 0, 0)
                                          ],
                                          begin: Alignment.bottomCenter,
                                          end: Alignment.topCenter,
                                        ),
                                      ),
                                      padding: EdgeInsets.symmetric(
                                          vertical: 10.0, horizontal: 20.0),
                                      child: Text(
                                        '',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ))
                  .toList()),
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

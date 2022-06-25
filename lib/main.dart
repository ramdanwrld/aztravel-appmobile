import 'package:flutter/material.dart';
import 'package:flutter_application_1/login_register/utama.dart';
import 'bottom/bottom_navi.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const run());
}

class run extends StatelessWidget {
  const run({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: utama(),
    );
  }
}

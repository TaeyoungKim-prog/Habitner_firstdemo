import 'package:flutter/material.dart';
import 'package:habitner_mvp_ver_0/screens/dailyCheckScreen.dart';
import 'package:habitner_mvp_ver_0/screens/firstScreen.dart';
import 'package:habitner_mvp_ver_0/screens/writeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/first' : (context) => FirstPage(),
        '/write' : (context) => WritePage(),
        '/dailyCheck' : (context) => DailyCheckPage(),
      },
      home: FirstPage(),
    );
  }
}


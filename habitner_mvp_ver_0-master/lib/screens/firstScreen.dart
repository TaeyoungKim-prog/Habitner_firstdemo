import 'package:flutter/material.dart';
import 'package:habitner_mvp_ver_0/calendar/calender.dart';
import 'package:habitner_mvp_ver_0/constant/constants.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("달력 나오는 화면")),
      body: Column(
        children: [
          //Calender(),
          Padding(
            padding: EdgeInsets.all(basic_size),
            child: Text(
              "first page",
              style: TextStyle(color: click_color),
            ),
          ),
          pad1,
          Text("go to writeScreen"),
          pad1,
          _addButton(context, '/write'),
          Text("go to dailyCheckScreen"),
          pad1,
          _addButton(context, '/dailyCheck'),
        ],
      ),
    );
  }

  FlatButton _addButton(BuildContext context, String pageRoute) {
    return FlatButton(
          onPressed: () {
            Navigator.pushNamed(context, pageRoute);
          },
          child: Icon(Icons.add),
        );
  }
}

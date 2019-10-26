import 'package:flutter/material.dart';
import 'package:workshop_analytics_devfest_elalto2019/pages/custom.dart';
import 'package:workshop_analytics_devfest_elalto2019/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  static List<Widget> _home = [
    MyHomePage(title: 'Flutter Demo Home Page'),
    Custom()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _home[0],
    );
  }
}

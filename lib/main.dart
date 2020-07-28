import 'package:consumption/consumption.dart';
import 'package:consumption/messageInfo.dart';
import 'package:flutter/material.dart';

import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation with Routes',
      initialRoute: '/',
      routes: {
        '/': (_) => new Home(),
        '/consumption': (_) => new Consumption(),
        '/info': (_) => new MessageInfo(),
      },
    );
  }
}
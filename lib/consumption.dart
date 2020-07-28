import 'package:flutter/material.dart';

class Consumption extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Welcome to Flutter'),
          ),
          body:Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 32,bottom:20),
                child: Text('計算画面'),
              ),
            ],
          )
      ),
    );
  }
}
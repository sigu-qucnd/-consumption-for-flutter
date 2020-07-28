import 'package:flutter/material.dart';

class Home extends StatelessWidget {
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
                child: Text('消費税計算アプリ'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    child: Text("開始"),
                    color: Colors.white,
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/consumption');
                    },
                  ),
                  RaisedButton(
                    child: Text("説明"),
                    color: Colors.white,
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/info');
                    },
                  ),
                ],
              ),
            ],
          )
      ),
    );
  }
}
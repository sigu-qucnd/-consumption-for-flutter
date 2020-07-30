import 'package:flutter/material.dart';


class Consumption extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
          body:Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 32,bottom:20),
                child: Text('入力画面'),
              ),
              Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        const Text(
                          '金額 : ',
                          style: TextStyle(fontSize: 16),
                        ),
                        Flexible(
                          child:TextField(keyboardType: TextInputType.number,)
                        )
                      ]
                    )
                  ]
              ),
              Column(
                  children: <Widget>[
                    Row(
                        children: <Widget>[
                          const Text(
                            '税率 : ',
                            style: TextStyle(fontSize: 16),
                          ),
                          Flexible(
                              child:TextField(keyboardType: TextInputType.number,)
                          )
                        ]
                    )
                  ]
              ),
              Container(
                padding: EdgeInsets.only(top: 12,bottom:20),
                child: RaisedButton(
                  child: Text("計算"),
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  onPressed: () {},
                ),
              )

            ],
          )
    );
  }
}
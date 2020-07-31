import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class Consumption extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body:MyCustomForm(),

        );
    }
}

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final myController = TextEditingController();
  final consumController = TextEditingController();

  MyCustomFormState();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 32,bottom:20),
          child: Text('入力画面'),
        ),
        Container(
          padding: EdgeInsets.only(top: 12,bottom:20,right: 180,left: 5),
          child:
          Column(
              children: <Widget>[
                Row(
                    children: <Widget>[
                      const Text(
                        '金額 : ',
                        style: TextStyle(fontSize: 16),
                      ),
                      Flexible(
                          child:TextFormField(
                            controller: myController,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(12),
                              WhitelistingTextInputFormatter.digitsOnly,
                            ],
                            decoration: InputDecoration(labelText: '名前', border: OutlineInputBorder()),
                            keyboardType: TextInputType.number,
                          )                        )
                    ]
                )
              ]
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 12,bottom:20,right: 285,left: 5),
          child:
          Column(
              children: <Widget>[
                Row(
                    children: <Widget>[
                      const Text(
                        '税率 : ',
                        style: TextStyle(fontSize: 16),
                      ),
                      Flexible(
                          child:TextFormField(
                            controller: consumController,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(3),
                              WhitelistingTextInputFormatter.digitsOnly,
                            ],
                            decoration: InputDecoration(labelText: '税率', border: OutlineInputBorder()),
                            keyboardType: TextInputType.number,
                          )
                      )
                    ]
                )
              ]
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 12,bottom:20),
          child: RaisedButton(
            child: Text("計算"),
            color: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            onPressed: () {
              String _money;
              String _consumption;
              int _moneyData;
              int _consDara;
              _moneyData = int.parse(myController.text);
              _consDara = int.parse(consumController.text);
              _money = _moneyData.toString();
              _consumption = _consDara.toString();

              double _consWith;
              _consWith = _consDara.toDouble() / 100;
              _consWith = _moneyData.toDouble() * _consWith;

              double _consMoneyData;
              _consMoneyData = _consWith + _moneyData.toDouble();


              showDialog(
                context: context,
                builder: (_) {
                  return AlertDialog(
                    title: Text("計算結果"),
                    content:Text('金額は$_money円です。'
                        '\n税率が$_consumption％です。　'
                        '\n消費税は$_consWith円です。'
                        '\n税込みの値段は$_consMoneyData円です。'),
                    actions: <Widget>[
                      // ボタン領域

                      FlatButton(
                        child: Text("OK"),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        )
      ],
    );
  }
}
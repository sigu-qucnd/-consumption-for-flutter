import 'package:flutter/material.dart';

class MessageInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
          appBar: AppBar(
            title: const Text('Welcome to Flutter'),
          ),
          body:Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 32,bottom:10),
                child: Text('計算画面'),
              ),
              Container(
                child: Text('このアプリケーションは消費税の計算用のアプリケーション\n'
                    'です。使い方は以下のようになります。\n\n'
                    '①ホーム画面で開始をタップします。\n\n'
                    '②開始画面で消費税の計算を行いたい金額を入力します。\n\n'
                    '③消費税率を入力します。\n\n'
                    '④計算ボタンをタップします。\n\n'
                    '画面内にポップアップで金額が表示されます。',style: TextStyle(color:Colors.green)
                ),
              ),
            ],
          )

    );
  }
}
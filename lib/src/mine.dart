import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teemo/src/mine/setting.dart';

class MyPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MyPage();
  }
}

class _MyPage extends State{
  @override
  void initState() {
    print('___________________ mypage init _______________');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            '我的',
            style: TextStyle(
              fontSize: 30
            )
          ),
          FlatButton(
            child: Text(
              '设置',
              style: TextStyle(
                fontSize: 30
              )
            ),
            onPressed: (){
              Navigator.of(context).pushNamed('setting');
            },
          )
        ],
      )
      
      
    );
  }
}
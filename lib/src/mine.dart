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
    print('--- mypage init ---');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我的'),
      ),
      body: Container(
        child: Column(
          children: [
            FlatButton(
              child: Text(
                '设置 statefulwidget',
                style: TextStyle(
                  fontSize: 30
                )
              ),
              onPressed: (){
                Navigator.of(context).pushNamed('setting',
                  arguments: {
                    "data": 'saldalsdl'
                  }
                );
              },
            ),
            FlatButton(
              child: Text(
                'Version statelessWidget',
                style: TextStyle(
                  fontSize: 30
                )
              ),
              onPressed: (){
                Navigator.of(context).pushNamed('version',
                  arguments: {
                    'text': '参数text'
                  }
                );
              },
            )
          ],
        )      
      ),
    );
  }
}
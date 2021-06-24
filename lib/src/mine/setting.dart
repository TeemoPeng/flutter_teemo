
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teemo/fonts/iconfont.dart';

class Setting extends StatefulWidget{
  final String data;
  Setting({this.data, arguments});

  @override
  State<StatefulWidget> createState() {
    return _Setting();
  }
}

class _Setting extends State{

  /// 获取路由参数
  get args => ModalRoute.of(context).settings.arguments;

  @override
  void initState(){
    super.initState();
  }
  @override
  Widget build(BuildContext context){
    String params = '';
    if (args != null) {
      params = args['data'];
    }
    print(' 参数：$params');

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon:  Icon(
            IconFont.icon_arrow,
          ),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          '设置'
        ),
      ),
      body: Column(
        children: [
          TextButton(
            child: Text('设置页面 参数：$params',
              style: TextStyle(color: Colors.blue),
            ),
            onPressed: (){
              Navigator.of(context).pushNamed('home');
            },
          ),
        ]
      ),
    );    
  }
}
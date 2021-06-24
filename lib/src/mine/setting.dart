import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teemo/main.dart';

class Setting extends StatefulWidget{
  final String data;
  Setting({this.data});

  @override
  State<StatefulWidget> createState(){
    return _Setting({this.data});
  }

}

class _Setting extends State{
  _Setting(Set<String> set);

  @override
  void initState(){
    super.initState();
  }
  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.white,
      child: FlatButton(
        child: Text('设置页面',
          style: TextStyle(color: Colors.blue),
        ),
        onPressed: (){
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => RootApp())
          );
        },
      )
    );
  }
}
import 'package:flutter/material.dart';

class IndexPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return _IndexPage();
  }  
 
}

class _IndexPage extends State{
  @override
  void initState() {
    print('--- indexpage init ---');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        '首页',
        style: TextStyle(
          fontSize: 30
        ),
      ),
    );
  }
}
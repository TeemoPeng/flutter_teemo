import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Version extends StatelessWidget{
  final Map arguments;

  const Version({Key key, this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Text(
            'Version 参数：${this.arguments}, $arguments',
            style: TextStyle(
              color: Colors.black
            ),
          ),
        ),
      )
    );
  }  
}
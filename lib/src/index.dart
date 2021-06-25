import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:teemo/api/api.dart';

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

  Dio dio = Dio();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            '首页',
            style: TextStyle(
              fontSize: 30
            ),
          ),

          TextButton(
            onPressed: () async{
              print('---------- 请求中 -----------');
              API.getArticle(
                data: {
                  'name': 'sb'
                }
              );

            }, 
            child: Text('发送请求')
          ),

          TextButton(
            onPressed: () async{
              print('---------- 请求中 -----------');
              var article = await API.getArticle();

              print(' ---- 请求结果 ----: $article');

            }, 
            child: Text('发送请求2')
          )
        ],
      )
    );
  }
}
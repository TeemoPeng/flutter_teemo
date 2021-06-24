import 'package:flutter/material.dart';
import 'package:teemo/fonts/iconfont.dart';
import 'package:teemo/routes/routes.dart';
import 'package:teemo/src/index.dart';
import 'package:teemo/src/mine.dart';


int currentIndex = 0;
List pages = [IndexPage(), MyPage()];
void main() {
  runApp(RootApp());
}

class RootApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _RootAppState();
  }
}

class _RootAppState extends State {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        bottomAppBarTheme: BottomAppBarTheme(
          color: Colors.blue,
        )
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: pages[currentIndex],
          ),
        ),        
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          currentIndex: currentIndex,
          onTap: (index){
            currentIndex = index;
            print('---------- index: ${index is int}, $currentIndex,${pages[currentIndex]}');
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
              icon: Image(
                image: AssetImage('assets/images/teemo.png'),
                width: 30,
              ),
              label: '首页',
              activeIcon: Icon(IconFont.icon_hot)
            ),
            BottomNavigationBarItem(
              icon: Icon(IconFont.icon_phone_fill),
              label: '我的'
            )
          ],
        ),
      ),
      routes: appRoutes,
    );
  }
}

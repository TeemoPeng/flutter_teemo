import 'package:flutter/material.dart';
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
          color: Colors.blue
        )
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter 应用',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          child: pages[currentIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blue,
          onTap: (index){
            currentIndex = index;
            print('---------- index: ${index is int}, $currentIndex,${pages[currentIndex]}');
            setState(() {
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('首页')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mediation),
              title: Text('我的')
            )
          ],
        ),
      ),
      routes: appRoutes,
    );
  }
}

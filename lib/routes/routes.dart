import 'package:flutter/material.dart';
import 'package:teemo/main.dart';
import 'package:teemo/src/mine.dart';
import 'package:teemo/src/mine/setting.dart';
import 'package:teemo/src/mine/version.dart';

final Map<String, WidgetBuilder> appRoutes = {
  'home': (context) => RootApp(),
  'setting': (context) => Setting(),
  'mine': (context) => MyPage(),
  'version': (context) => Version()
};
import 'package:flutter/widgets.dart';
import 'screens/Home.dart';
import 'screens/AboutUs.dart';
import 'screens/Settings.dart';

Map<String, WidgetBuilder> routes = {
  '/home': (context) => Home(),
  '/aboutus': (context) => AboutUs(),
  '/settings': (context) => Settings(),
};

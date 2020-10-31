import 'package:flutter/material.dart';
import '../components/Drawer.dart';
import '../constants/AppConstants.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(HOME_SCREEN_TITLE),
      ),
      drawer: CommonDrawer(HOME_SCREEN_TITLE),
    );
  }
}

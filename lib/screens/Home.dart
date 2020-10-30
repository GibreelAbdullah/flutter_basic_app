import 'package:flutter/material.dart';
import '../components/Drawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: CommonDrawer('Home'),
    );
  }
}

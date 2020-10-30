import 'package:flutter/material.dart';
import '../components/Drawer.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
      ),
      drawer: CommonDrawer('About Us'),
    );
  }
}
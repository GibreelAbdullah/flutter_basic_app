import 'package:flutter/material.dart';
import '../components/Drawer.dart';
import '../constants/AppConstants.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(ABOUT_US_SCREEN_TITLE),
      ),
      drawer: CommonDrawer(ABOUT_US_SCREEN_TITLE),
    );
  }
}

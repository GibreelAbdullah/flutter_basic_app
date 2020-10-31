import 'package:flutter/material.dart';
import '../constants/AppConstants.dart';

// ignore: must_be_immutable
class CommonDrawer extends StatelessWidget {
  String _currentScreen;

  CommonDrawer(String title) {
    _currentScreen = title;
  }

  FlatButton drawerItem(BuildContext context, String title, String route) {
    return FlatButton(
      onPressed: () {
        if (_currentScreen != title)
          Navigator.pushReplacementNamed(context, route);
        else
          Navigator.pop(context);
      },
      child: Row(
        children: [
          Icon(Icons.home),
          SizedBox(
            width: 10,
          ),
          Text(title)
        ],
      ),
    );
  }

  @override
  Drawer build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                drawerItem(context, HOME_SCREEN_TITLE, '/home'),
                drawerItem(context, ABOUT_US_SCREEN_TITLE, '/aboutus'),
              ],
            ),
            Column(
              children: [
                Divider(),
                drawerItem(context, SETTINGS_SCREEN_TITLE, '/settings'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

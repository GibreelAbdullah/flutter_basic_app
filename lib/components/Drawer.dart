import 'package:flutter/material.dart';
import '../constants/AppConstants.dart';

// ignore: must_be_immutable
class CommonDrawer extends StatelessWidget {
  String _currentScreen;

  CommonDrawer(String title) {
    _currentScreen = title;
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
                FlatButton(
                  onPressed: () {
                    if (_currentScreen != HOME_SCREEN_TITLE)
                      Navigator.pushReplacementNamed(context, '/home');
                    else
                      Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      Icon(Icons.home),
                      SizedBox(
                        width: 10,
                      ),
                      Text(HOME_SCREEN_TITLE)
                    ],
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    if (_currentScreen != ABOUT_US_SCREEN_TITLE)
                      Navigator.pushReplacementNamed(context, '/aboutus');
                    else
                      Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      Icon(Icons.people),
                      SizedBox(
                        width: 10,
                      ),
                      Text(ABOUT_US_SCREEN_TITLE)
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Divider(),
                FlatButton(
                  onPressed: () {
                    if (_currentScreen != SETTINGS_SCREEN_TITLE)
                      Navigator.pushReplacementNamed(context, '/settings');
                    else
                      Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      Icon(Icons.settings),
                      SizedBox(
                        width: 10,
                      ),
                      Text(SETTINGS_SCREEN_TITLE)
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

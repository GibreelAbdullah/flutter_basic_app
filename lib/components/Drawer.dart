import 'package:flutter/material.dart';

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
                    if (_currentScreen != 'Home')
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
                      Text('Home')
                    ],
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    if (_currentScreen != 'About Us')
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
                      Text('About Us')
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
                    if (_currentScreen != 'Settings')
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
                      Text('Settings')
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

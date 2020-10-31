import 'package:flutter/material.dart';
import '../components/Drawer.dart';
import '../constants/AppConstants.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(SETTINGS_SCREEN_TITLE),
      ),
      drawer: CommonDrawer(SETTINGS_SCREEN_TITLE),
    );
  }
}

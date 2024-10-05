import 'package:flutter/material.dart';
import 'get_started_page.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => GetStartedPage()),
            );
          },
          child: Text('Log Out'),
        ),
      ),
    );
  }
}

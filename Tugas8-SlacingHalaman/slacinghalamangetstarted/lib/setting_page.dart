import 'package:flutter/material.dart';
import 'get_started_page.dart'; // Pastikan import halaman get started

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
            // Arahkan ke halaman get started ketika tombol log out diklik
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

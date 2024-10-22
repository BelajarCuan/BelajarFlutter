import 'package:flutter/material.dart';
import 'package:jagoapi/user/page/user_page.dart';
import 'package:jagoapi/auth/pages/register_page.dart';
import 'package:jagoapi/auth/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

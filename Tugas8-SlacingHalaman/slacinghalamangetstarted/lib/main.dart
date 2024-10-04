import 'package:flutter/material.dart';
import 'get_started_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sanber News',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GetStartedPage(), // Routing ke halaman GetStartedPage
    );
  }
}

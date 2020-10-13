import 'package:flutter/material.dart';
import 'views/HomePage.dart';

void main() {
  runApp(CovidApp());
}

class CovidApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/location': (context) => HomePage(),
      },
    );
  }
}

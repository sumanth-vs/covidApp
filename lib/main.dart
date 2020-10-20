import 'package:flutter/material.dart';
import 'package:covid_app/covidApi/get_data.dart';
import 'views/HomePage.dart';

void main() {
  runApp(CovidApp());
}

class CovidApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CovidData('').fetchData();
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/location': (context) => HomePage(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CovidData {
  void fetchData() {
    print(http.get('https://api.covid19india.org/v4/data.json'));
  }
}

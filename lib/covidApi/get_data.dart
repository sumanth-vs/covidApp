import 'dart:collection';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CovidData {
  final String state;
  CovidData(this.state);

  List<String> _stateList = [];

  String url = 'https://api.covid19india.org/state_district_wise.json';

  void fetchData() async {
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      String data = response.body;

      // Convert String to Map
      HashMap<String, dynamic> decodedData = HashMap.from(jsonDecode(data));

      _stateList ?? getStateList(decodedData);
    } else {
      print('Error in data retreival');
    }
  }

  void getStateList(decodedData) {
    decodedData.keys.forEach((element) {
      _stateList.add(element);
    });
  }
}

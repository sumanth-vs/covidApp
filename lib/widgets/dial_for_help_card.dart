import 'package:covid_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DialForHelpCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.all(15),
      decoration: Constants.kDialForHelpDecoration,
      child: Row(
        children: [
          FaIcon(
            FontAwesomeIcons.ambulance,
            size: 80,
            color: Colors.orange,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('data'),
              Text('data'),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:covid_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_icons/line_icons.dart';

class DialForHelpCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Shader kLinearGradient = LinearGradient(
      colors: <Color>[Colors.white, Colors.purple],
    ).createShader(Rect.fromLTWH(70.0, 70.0, 200.0, 200.0));
    return Container(
      height: 150,
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.all(15),
      decoration: Constants.kDialForHelpDecoration,
      child: Row(
        children: [
          ShaderMask(
            shaderCallback: (Rect bounds) => RadialGradient(
              center: Alignment.bottomLeft,
              radius: 1.5,
              colors: [Colors.yellow[400], Colors.pink],
              tileMode: TileMode.mirror,
            ).createShader(bounds),
            child: Icon(
              LineIcons.ambulance,
              color: Colors.white,
              size: 120,
            ),
          ),
          SizedBox(width: 40),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Dial 14410',
                style: Constants.kDialForHelpTextStyle.copyWith(
                  foreground: Paint()..shader = kLinearGradient,
                ),
              ),
              Text(
                'for help',
                textAlign: TextAlign.left,
                style: Constants.kDialForHelpDescTextStyle.copyWith(
                  foreground: Paint()..shader = kLinearGradient,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

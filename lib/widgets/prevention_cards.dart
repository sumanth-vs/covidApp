import 'package:covid_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PreventionCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          PreventionMethod(
            color: Colors.orange,
            bgColor: Colors.orange[100],
            icon: FontAwesomeIcons.handsWash,
            iconSize: 50,
            radius: 50,
            title: 'Wash Hands',
            titleStyle: Constants.kPreventionTextStyle,
            titleColor: Colors.orange,
          ),
          PreventionMethod(
            color: Colors.pink,
            bgColor: Colors.pink[100],
            icon: FontAwesomeIcons.headSideMask,
            iconSize: 50,
            radius: 50,
            title: 'Wear Mask',
            titleStyle: Constants.kPreventionTextStyle,
            titleColor: Colors.pink,
          ),
          PreventionMethod(
            color: Colors.purple,
            bgColor: Colors.purple[100],
            icon: FontAwesomeIcons.pumpMedical,
            iconSize: 50,
            radius: 50,
            title: 'Keep Clean',
            titleStyle: Constants.kPreventionTextStyle,
            titleColor: Colors.purple,
          ),
        ],
      ),
    );
  }
}

class PreventionMethod extends StatelessWidget {
  final double radius;
  final Color color, bgColor, titleColor;
  final dynamic icon;
  final double iconSize;
  final String title;
  final TextStyle titleStyle;

  const PreventionMethod({
    this.radius,
    this.color,
    this.icon,
    this.iconSize,
    this.title,
    this.titleStyle,
    this.bgColor,
    this.titleColor,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: radius,
          backgroundColor: bgColor,
          child: FaIcon(
            icon,
            size: iconSize,
            color: color,
          ),
        ),
        SizedBox(height: 20),
        Text(
          title,
          style: titleStyle.copyWith(
            color: titleColor,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class Constants {
  static const String help = 'Help', feedback = 'Feedback';

  static const List<String> choice = <String>[
    help,
    feedback,
  ];

  static var kMainCardDecoration = BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(15)),
  );

  static var kEachCardContainerDecoration = BoxDecoration(
    color: Colors.white,
    boxShadow: [
      BoxShadow(
        color: Colors.grey[400],
        offset: Offset(-1, 2),
        blurRadius: 1.0,
      )
    ],
    borderRadius: BorderRadius.all(Radius.circular(10)),
  );

  static const kEachCardTitleTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
  );

  static const kHomePageSectionTitleStyle = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.bold,
    // color: Colors.green,
  );

  static const kPreventionTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
  );

  static var kDialForHelpDecoration = BoxDecoration(
    color: Colors.green[200],
    borderRadius: BorderRadius.all(Radius.circular(15)),
    gradient: LinearGradient(
      colors: [Colors.orange[100], Colors.pink[100], Colors.purple[100]],
      begin: const FractionalOffset(0, 0),
      end: const FractionalOffset(1, 0),
      stops: [0, 1, 2],
      tileMode: TileMode.clamp,
    ),
  );
}

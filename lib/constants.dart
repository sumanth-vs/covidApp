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
        blurRadius: 2.0,
      )
    ],
    borderRadius: BorderRadius.all(Radius.circular(10)),
  );

  static const kEachCardTitleTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
  );

  static const kHomePageSectionTitleStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
}

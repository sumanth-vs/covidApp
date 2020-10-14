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

  static var kEachCardContainerDecoration1 = BoxDecoration(
    color: Colors.orangeAccent,
    boxShadow: [
      BoxShadow(
        color: Colors.orange,
        offset: Offset(-1, 2),
        blurRadius: 2.0,
      )
    ],
    borderRadius: BorderRadius.all(Radius.circular(10)),
  );
  static var kEachCardContainerDecoration2 = BoxDecoration(
    color: Colors.pinkAccent,
    boxShadow: [
      BoxShadow(
        color: Colors.pink,
        offset: Offset(-1, 2),
        blurRadius: 2.0,
      )
    ],
    borderRadius: BorderRadius.all(Radius.circular(10)),
  );
  static var kEachCardContainerDecoration3 = BoxDecoration(
    color: Colors.greenAccent,
    boxShadow: [
      BoxShadow(
        color: Colors.green,
        offset: Offset(-1, 2),
        blurRadius: 2.0,
      )
    ],
    borderRadius: BorderRadius.all(Radius.circular(10)),
  );
  static var kEachCardContainerDecoration4 = BoxDecoration(
    color: Colors.purpleAccent,
    boxShadow: [
      BoxShadow(
        color: Colors.purple,
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

  static const kDialForHelpTextStyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 30,
  );

  static const kDialForHelpDescTextStyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 25,
  );
}

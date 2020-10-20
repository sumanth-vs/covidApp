import 'package:flutter/material.dart';
import 'package:covid_app/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainCardContainer extends StatefulWidget {
  @override
  _MainCardContainerState createState() => _MainCardContainerState();
}

class _MainCardContainerState extends State<MainCardContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              EachCardContainer(
                icon: FaIcon(
                  FontAwesomeIcons.solidChartBar,
                  size: 18,
                  color: Colors.orange,
                ),
                stat: 123,
                title: 'Confirmed Cases',
                decoration: Constants.kEachCardContainerDecoration1,
                avatarColor: Colors.orange[100],
              ),
              EachCardContainer(
                icon: FaIcon(
                  FontAwesomeIcons.skullCrossbones,
                  size: 18,
                  color: Colors.pink,
                ),
                stat: 123,
                title: 'Total Death',
                decoration: Constants.kEachCardContainerDecoration2,
                avatarColor: Colors.pink[100],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              EachCardContainer(
                icon: FaIcon(
                  FontAwesomeIcons.virusSlash,
                  size: 18,
                  color: Colors.green,
                ),
                stat: 123,
                title: 'Recoveries',
                avatarColor: Colors.green[100],
                decoration: Constants.kEachCardContainerDecoration3,
              ),
              EachCardContainer(
                icon: FaIcon(
                  FontAwesomeIcons.diagnoses,
                  size: 18,
                  color: Colors.purple,
                ),
                stat: 123,
                title: 'New Cases',
                decoration: Constants.kEachCardContainerDecoration4,
                avatarColor: Colors.purple[100],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// Contents of Each Card
class EachCardContainer extends StatelessWidget {
  final FaIcon icon;
  final String title;
  final int stat;
  final Color avatarColor;
  final BoxDecoration decoration;

  const EachCardContainer(
      {this.icon, this.title, this.stat, this.avatarColor, this.decoration});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 120,
        margin: EdgeInsets.all(7),
        padding: EdgeInsets.all(10),
        decoration: decoration,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  maxRadius: 15,
                  backgroundColor: avatarColor,
                  child: icon,
                ),
                Expanded(
                  child: Text(
                    '$title',
                    textAlign: TextAlign.center,
                    style: Constants.kEachCardTitleTextStyle,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('$stat'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

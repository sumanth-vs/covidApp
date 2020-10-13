import 'package:flutter/material.dart';
import 'package:covid_app/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// class MainCard extends StatefulWidget {
//   final int index;

//   MainCard({this.index});
//   @override
//   _MainCardState createState() => _MainCardState();
// }

// class _MainCardState extends State<MainCard> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(left: 10, right: 10),
//       alignment: Alignment.center,
//       decoration: Constants.kMainCardDecoration.copyWith(
//         color: widget.index % 2 == 0 ? Colors.red : Colors.green,
//       ),
//       child: Text('Grid ${widget.index + 1}'),
//     );
//   }
// }

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
              ),
              EachCardContainer(
                icon: FaIcon(
                  FontAwesomeIcons.diagnoses,
                  size: 18,
                  color: Colors.purple,
                ),
                stat: 123,
                title: 'New Cases',
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

  const EachCardContainer({this.icon, this.title, this.stat, this.avatarColor});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 120,
        margin: EdgeInsets.all(7),
        padding: EdgeInsets.all(10),
        decoration: Constants.kEachCardContainerDecoration,
        child: Column(
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
            Row(
              children: [
                Text('$stat'),
              ],
            ),
            Text('People'),
          ],
        ),
      ),
    );
  }
}

// Icon(
//   icon,
//   color: iconColor,
//   size: 19,
// ),

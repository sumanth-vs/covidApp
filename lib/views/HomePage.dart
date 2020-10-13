import 'package:covid_app/widgets/dial_for_help_card.dart';
import 'package:covid_app/widgets/main_cards.dart';
import 'package:covid_app/widgets/prevention_cards.dart';
import 'package:flutter/material.dart';
import 'package:covid_app/constants.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //Prevention Gradient
    final Shader kLinearGradient = LinearGradient(
      colors: <Color>[Colors.green, Colors.green[800]],
    ).createShader(Rect.fromLTWH(70.0, 100.0, 200.0, 50.0));

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        drawer: Drawer(
          child: Center(child: Text('data')),
        ),
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                iconTheme: IconThemeData(color: Colors.green[900]),
                leading: null,
                backgroundColor: Colors.white,
                title: Text(
                  'Country',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                centerTitle: true,
                actions: <Widget>[
                  PopupMenuButton(
                    onSelected: choiceAction,
                    itemBuilder: (context) => Constants.choice
                        .map(
                          (String choice) => PopupMenuItem(
                            child: Text(choice),
                            value: choice,
                          ),
                        )
                        .toList(),
                  ),
                ],
                expandedHeight: 100,
              ),
              SliverToBoxAdapter(
                child: MainCardContainer(),
              ),
              SliverToBoxAdapter(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.blue,
                  child: Text('LIVE MAP HHERE'),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  margin: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  child: Text(
                    'Prevention',
                    style: Constants.kHomePageSectionTitleStyle.copyWith(
                      foreground: Paint()..shader = kLinearGradient,
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: PreventionCard(),
              ),
              SliverToBoxAdapter(
                child: DialForHelpCard(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void choiceAction(String choice) {
    print(choice);
  }
}

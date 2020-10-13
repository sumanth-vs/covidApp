import 'package:covid_app/widgets/main_cards.dart';
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
              // SliverGrid(
              //   delegate: SliverChildBuilderDelegate(
              //     (context, index) => MainCard(index: index),
              //     childCount: 4,
              //   ),
              //   gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              //     crossAxisSpacing: 5,
              //     mainAxisSpacing: 20,
              //     maxCrossAxisExtent: 418,
              //   ),
              // ),
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
                  // alignment: Alignment.center,
                  // color: Colors.teal,
                  child: Text(
                    'Prevention',
                    style: Constants.kHomePageSectionTitleStyle,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Row(
                  children: [
                    Icon(Icons.accessibility_new),
                    Icon(Icons.accessibility_new),
                    Icon(Icons.accessibility_new),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.teal,
                  child: Text('Dial For Help'),
                ),
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

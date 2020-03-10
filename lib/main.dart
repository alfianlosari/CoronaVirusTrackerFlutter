import 'package:flutter/material.dart';
import 'package:CoronaTracker/about.dart';
import 'package:CoronaTracker/advices.dart';
import 'package:CoronaTracker/google_map_base.dart';
import 'package:CoronaTracker/stats.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Corona Virus Tracker',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Corona Virus Tracker'),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  text: "Stats",
                ),
                Tab(
                  text: "Maps",
                ),
                Tab(
                  text: "Advices",
                ),
                Tab(
                  text: "About",
                ),
              ],
            ),
          ),
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              StatsPage(),
              BaseGoogleMap().getWidget(),
              AdvicesPage(),
              AboutPage()
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:CoronaTracker/advices.dart';
import 'package:CoronaTracker/models/about.dart';

class AboutPage extends StatelessWidget {
  final About about = About.defaultAbout;

  @override
  Widget build(BuildContext context) {
    var children = List<Widget>();

    children.add(SectionCardWidget(
      title: 'About Me',
      description: about.title,
    ));

    about.copyrights.forEach((element) {
      children.add(SectionCardWidget(
        title: element.title,
        description: element.license,
      ));
    });

    return Center(
        child: Container(
            constraints: BoxConstraints(maxWidth: 768),
            child: ListView(
                padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                children: children)));
  }
}

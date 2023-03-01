import 'package:flutter/material.dart';

import 'googlefonts.dart';

class headdes extends StatelessWidget {
  String title;
  String subtitle;
  dynamic desc;


  headdes(
      {required this.title,
      required this.subtitle,
      required this.desc,
      });
  @override
  Widget build(BuildContext context) {
    final font = MediaQuery.textScaleFactorOf(context);
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text(title, style: headingstyle(font * 70)),
          ),
          Text(
            subtitle,
            style: TextStyle(
                fontSize: font * 20,
                letterSpacing: 1.5,
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text(desc, style: desstyle(font * 20)),
          ),
        ],
      ),
    );
  }
}

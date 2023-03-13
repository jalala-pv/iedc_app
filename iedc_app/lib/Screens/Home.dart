import 'package:flutter/material.dart';

import '../widgets/assets.dart';

class HomeScreen extends StatelessWidget {
  List pageviewimg = [logo,grp1, lab, flu, lap];
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        itemCount: pageviewimg.length,
        itemBuilder: (context, index) {
          return Container(
              decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(pageviewimg[index]), fit: BoxFit.cover),
          ));
        });
  }
}

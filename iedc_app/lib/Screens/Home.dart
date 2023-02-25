import 'package:flutter/material.dart';

import '../widgets/assets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage(logo), fit: BoxFit.contain),
    ));
  }
}

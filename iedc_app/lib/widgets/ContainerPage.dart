import 'package:flutter/material.dart';
import 'package:iedc_app/widgets/assets.dart';

class Containerpage extends StatelessWidget {
  String url;
  double height;
  double width;
  Containerpage({required this.url, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(),
        image: DecorationImage(image: AssetImage(url), fit: BoxFit.contain),
      ),
    );
  }
}

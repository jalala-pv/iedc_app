import 'package:flutter/material.dart';
import 'package:iedc_app/widgets/assets.dart';

class Containerpage extends StatelessWidget {
  String url;
  double height;
  double width;
  double borderradius;
  BoxFit boxfit;
 

  Containerpage({required this.url, required this.height, required this.width,this.borderradius=0,this.boxfit=BoxFit.contain});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(),
        
        borderRadius: BorderRadius.all(Radius.circular(borderradius)),
        image: DecorationImage(image: AssetImage(url), fit: boxfit),
      ),
    );
  }
}

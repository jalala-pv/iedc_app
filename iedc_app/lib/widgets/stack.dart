import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:iedc_app/widgets/ContainerPage.dart';
import 'package:iedc_app/widgets/assets.dart';
import 'package:iedc_app/widgets/googlefonts.dart';

class stack extends StatelessWidget {
  String personname;
  String url;
  String position;
  stack({required this.personname, required this.url, required this.position});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final font = MediaQuery.textScaleFactorOf(context);
    return Stack(
      alignment: Alignment.center,
   
      clipBehavior: Clip.none,
      children: [
        Positioned(
            child: Container(
          width: width / 1.4,
          height: height / 4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(width / 19),
            color: Color.fromARGB(255, 98, 37, 212),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(personname,
                    style: TextStyle(color: Colors.white, fontSize: font * 23)),
                Text(position,
                    style: TextStyle(color: Colors.white, fontSize: font * 15))
              ],
            ),
          ),
        )),
        Positioned(
            bottom: 95,
            left: 135,
            child: Containerpage(
              url: logo,
              height: height / 4,
              width: width / 3,
              boxfit: BoxFit.cover,
              borderradius: width / 20,
            ))
      ],
    );
  }
}

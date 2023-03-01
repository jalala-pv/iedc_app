import 'package:flutter/material.dart';
import 'package:iedc_app/widgets/ContainerPage.dart';
import 'package:iedc_app/widgets/googlefonts.dart';

import '../widgets/assets.dart';

class EventScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return ListView(
      children: [
        Center(child: Text('EVENTS',style: headingstyle(height/10),)),
        Padding(
           padding: const EdgeInsets.only(top: 60,left:70,right: 70),
          child: Containerpage(
            url: logo,
            height: height / 2,
            width: width,
            borderradius: width / 20,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 70,left:70,right: 70),
          child: Containerpage(
            url: logo,
            height: height / 2,
            width: width,
            borderradius: width / 20,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 70,left:70,right: 70),
          child: Containerpage(
            url: logo,
            height: height / 2,
            width: width,
            borderradius: width / 20,
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 70,left:70,right: 70),
          child: Containerpage(
            url: logo,
            height: height / 2,
            width: width,
            borderradius: width / 20,
          ),
        ),
        Padding(
           padding: const EdgeInsets.only(top: 70,left:70,right: 70),
          child: Containerpage(
            url: logo,
            height: height / 2,
            width: width,
            borderradius: width / 20,
          ),
        ),
        Padding(
           padding: const EdgeInsets.only(top: 70,left: 70,right: 70),
          child: Containerpage(
            url: logo,
            height: height / 2,
            width: width,
            borderradius: width / 20,
          ),
        ),
        Padding(    padding: const EdgeInsets.only(top: 70,left:70,right: 70),
          child: Containerpage(
            url: logo,
            height: height / 2,
            width: width,
            borderradius: width / 20,
          ),
        ),
        Padding(
           padding: const EdgeInsets.only(top: 70,left:70,right: 70),
          child: Containerpage(
            url: logo,
            height: height / 2,
            width: width,
            borderradius: width / 20,
          ),
        ),
      ],
    );
  }
}

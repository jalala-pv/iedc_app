

import 'package:flutter/material.dart';
import 'package:iedc_app/widgets/ContainerPage.dart';
import 'package:iedc_app/widgets/assets.dart';
import 'package:iedc_app/widgets/eventpage.dart';
import 'package:iedc_app/widgets/googlefonts.dart';

import '../widgets/certificates.dart';

class Achievements extends StatelessWidget {
  final space = SizedBox(
    height: 20,
  );
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final font = MediaQuery.textScaleFactorOf(context);
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: ListView(
          children: [
            Center(
                child: Text(
              'ACHIEVEMENTS',
              style: headingstyle(font * 60),
            )),
            space,
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => certificates()));
              },
              child: Containerpage(
                url: logo,
                height: height / 2.5,
                width: width / 3,
                boxfit: BoxFit.cover,
                borderradius: width / 20,
              ),
            ),
            space,
            GestureDetector(
              onTap:(){ Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Eventpage()));} ,
              child: Containerpage(
                url: logo,
                  height: height / 2.5,
                  width: width / 3,
                borderradius: width / 20,
                      boxfit: BoxFit.cover,
                
              ),
            )
          ],
        ),
      )),
    );
  }
}

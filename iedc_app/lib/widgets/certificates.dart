import 'package:flutter/material.dart';
import 'package:iedc_app/widgets/ContainerPage.dart';
import 'package:iedc_app/widgets/googlefonts.dart';

import 'assets.dart';

class certificates extends StatelessWidget {
  
  List certificate = [
    logo,
    flower,
    flower,
    logo,
    flower,
    logo,
    flower,
    logo,
    flower,
  ];
  final space = SizedBox(
    height: 40,
  );
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
        final font = MediaQuery.textScaleFactorOf(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              children: [
                Center(child: Text('CERTIFICATES',style: headingstyle(font*50),)),
                ListView.builder(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemCount: certificate.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          space,
                          Containerpage(
                            url: certificate[index],
                            height: height / 2.5,
                            width: width / 1.25,
                            borderradius: width / 20,
                          ),
                        ],
                      );
                    }),
              ],
            )),
      ),
    );
  }
}

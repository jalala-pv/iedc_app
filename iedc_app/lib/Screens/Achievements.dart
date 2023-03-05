import 'package:flutter/material.dart';
import 'package:iedc_app/widgets/ContainerPage.dart';
import 'package:iedc_app/widgets/assets.dart';

import 'package:iedc_app/widgets/googlefonts.dart';

import '../widgets/data.dart';

class Achievements extends StatelessWidget {

  /////////

  var data = getData();
////////
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final font = MediaQuery.textScaleFactorOf(context);
    return Scaffold(
      body: SafeArea(
          child: ListView(
            
            children: [
              Center(child: Text('ACHIEVEMENTS',style: headingstyle(font*60),)),
              Padding(
                padding: const EdgeInsets.all(50),
                child: ListView.builder(
                      shrinkWrap: true,
                   physics: ScrollPhysics(),
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, 'Achievementpage',
                                arguments: {
                                  'name': data[index]['name'],
                                  'achieveimg': data[index]['achieveimg'],
                                });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Containerpage(
                                url: data[index]['url'].toString(),
                                height: height / 2.5,
                                width: width / 3,
                                boxfit: BoxFit.cover,
                                borderradius: width/20,),
                          ),
                              );
                    }),
              ),
            ],
          )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:iedc_app/widgets/ContainerPage.dart';
import 'package:iedc_app/widgets/googlefonts.dart';

import '../widgets/assets.dart';

class EventScreen extends StatelessWidget {
  List event = [logo, flower, logo, logo, logo, logo, logo, logo];
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return ListView(
      children: [
        Center(
            child: Text(
          'EVENTS',
          style: headingstyle(height / 10),
        )),
        ListView.builder(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemCount: event.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 50, left: 50, right: 50),
                child: Containerpage(
                  url: event[index],
                  height: height / 2.5,
                  width: width,
                  borderradius: width / 20,
                  boxfit: BoxFit.cover,
                ),
              );
            })
      ],
    );
  }
}

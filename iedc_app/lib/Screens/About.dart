import 'package:flutter/material.dart';
import 'package:iedc_app/widgets/ContainerPage.dart';
import 'package:iedc_app/widgets/assets.dart';
import 'package:iedc_app/widgets/googlefonts.dart';
import 'package:iedc_app/widgets/headdes.dart';

class AboutScreen extends StatelessWidget {
  List iedcimg = [lab, lab3, lap, grp1];
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final font = MediaQuery.textScaleFactorOf(context);

    return ListView(
      children: [
        Containerpage(url: lap, height: height, width: width),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Containerpage(url: lab, height: height / 3, width: width),
        ),
        headdes(
            title: 'WHAT IS IEDC?',
            subtitle: 'WHY IEDC?',
            desc:
                'The Innovation and Entrepreneurship Development Centres (IEDC) are platforms set up by the KSUM (Kerala Start-Up Mission) in colleges and institutions with an aim to provide students with an opportunity to experiment and innovate their ideas. IEDCs work as the first launchpad needed for a students entrepreneurial journey allowing them to collaborate and transform their innovative ideas into services and products. It plays an essential role in the fostering of experimenting and innovation culture in academic institutions.'),
        SizedBox(
          height: 30,
        ),
        Opacity(
          opacity: 0.5,
          child: Containerpage(url: grp1, height: height / 1.5, width: width)),
        headdes(
            title: 'IEDC',
            subtitle: '@SSC AREEKODE',
            desc:
                'The IEDC Club here @Sullamussalam is dedicated to its pursuit of boosting the innovative culture among its students. We strive to bridge the gap between concepts and services by letting students take complete control of the activities that we do here. Because its driven by the students the club stays active and motivated all year round with tech-talks, seminars, bootcamps, idea-contests and workshops'),
        ListView.builder(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemCount: iedcimg.length,
            itemBuilder: ((context, index) {
              return Padding(
                padding: const EdgeInsets.all(30.0),
                child: Containerpage(
                    url: iedcimg[index], height: height / 3, width: width / 3),
              );
            })),
        Containerpage(url:visionn, height: height / 1.5, width: width),
        headdes(
            title: 'MISSION',
            subtitle: 'VISION',
            desc:
                'To equip students with the latest technical skills and develop an inventive mindset among them.To assemble an empowering community that serves as a hotspot for solutions, with the welfare of the society in its mind.'),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Containerpage(url:mission, height: height / 2, width: width / 3),
        ),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Containerpage(url: vision, height: height / 2, width: width / 3),
        ),
        Objectives(context),
      ],
    );
  }

  Widget Objectives(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final font = MediaQuery.textScaleFactorOf(context);

    List<String> str = [
      'to design and develop innovative products of social relevance.',
      'To build a strong student community that is on par with the current industry,',
      'To set up an ecosystem that boosts innovative ideas among students',
      'To provide ample oppurtunities for students to explore various domains',
      'Encourage more women entrepreneurs.',
      'To promote start-up initiatives from Faculty and Students.'
    ];

    return Container(
      color: Colors.purple,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Text('OUR OBJECTIVES',
                style: TextStyle(color: Colors.white, fontSize: font * 35)),
          ),
          ListView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: str.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(
                    Icons.circle,
                    color: Colors.white,
                    size: width / 35,
                  ),
                  title: Text(
                    str[index],
                    style: TextStyle(color: Colors.white, fontSize: font * 18),
                  ),
                );
              })
        ],
      ),
    );
  }
}

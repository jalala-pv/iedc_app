import 'package:flutter/material.dart';
import 'package:iedc_app/widgets/ContainerPage.dart';
import 'package:iedc_app/widgets/assets.dart';
import 'package:iedc_app/widgets/headdes.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return ListView(
      children: [
        Containerpage(url: logo, height: height, width: width),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Containerpage(url: logo, height: height / 3, width: width / 3),
        ),
        headdes(
            title: 'WHAT IS IEDC?',
            subtitle: 'WHY IEDC?',
            desc:
                'The Innovation and Entrepreneurship Development Centres (IEDC) are platforms set up by the KSUM (Kerala Start-Up Mission) in colleges and institutions with an aim to provide students with an opportunity to experiment and innovate their ideas. IEDCs work as the first launchpad needed for a students entrepreneurial journey allowing them to collaborate and transform their innovative ideas into services and products. It plays an essential role in the fostering of experimenting and innovation culture in academic institutions.'),
        SizedBox(
          height: 30,
        ),
        Containerpage(url: logo, height: height / 1.5, width: width),
        headdes(
            title: 'IEDC',
            subtitle: '@SSC AREEKODE',
            desc:
                'The IEDC Club here @Sullamussalam is dedicated to its pursuit of boosting the innovative culture among its students. We strive to bridge the gap between concepts and services by letting students take complete control of the activities that we do here. Because its driven by the students the club stays active and motivated all year round with tech-talks, seminars, bootcamps, idea-contests and workshops'),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Containerpage(url: logo, height: height / 3, width: width / 3),
        ),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Containerpage(url: logo, height: height / 3, width: width / 3),
        ),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Containerpage(url: logo, height: height / 3, width: width / 3),
        ),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Containerpage(url: logo, height: height / 3, width: width / 3),
        ),
        Containerpage(url: logo, height: height / 1.5, width: width),
        headdes(
            title: 'MISSION',
            subtitle: 'VISION',
            desc:
                'To equip students with the latest technical skills and develop an inventive mindset among them.To assemble an empowering community that serves as a hotspot for solutions, with the welfare of the society in its mind.'),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Containerpage(url: logo, height: height / 2, width: width / 3),
        ),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Containerpage(url: logo, height: height / 2, width: width / 3),
        ),
     Container(color:Colors.purple[700],child: headdes(title: 'OUR OBJECTIVES', subtitle: '', desc: 'To design and develop innovative products of social relevance.\nTo build a strong student community that is on par with the current industry\nTo set up an ecosystem that boosts innovative ideas among students\nTo provide ample oppurtunities for students to explore various domains\nEncourage more women entrepreneurs.\nTo promote start-up initiatives from Faculty and Students.',color: Colors.white,))
      ],
    );
  }
}

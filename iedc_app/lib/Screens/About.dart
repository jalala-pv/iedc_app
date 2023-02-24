import 'package:flutter/material.dart';
import 'package:iedc_app/widgets/ContainerPage.dart';
import 'package:iedc_app/widgets/assets.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final double size = 40;
    return ListView(
      children: [
        Containerpage(url: logo, height: height, width: width),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Containerpage(url: logo, height: height / 3, width: width / 3),
        ),
        Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  'WHAT IS IEDC?',
                  style: TextStyle(
                    fontSize: size,
                  ),
                ),
              ),
              Text(
                '  WHY IEDC?',
                style: TextStyle(
                    fontSize: size / 2,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Text(
            ' The Innovation and Entrepreneurship Development Centres (IEDC) are platforms set up by the KSUM (Kerala Start-Up Mission) in colleges and institutions with an aim to provide students with an opportunity to experiment and innovate their ideas. IEDCs work as the first launchpad needed for a students entrepreneurial journey allowing them to collaborate and transform their innovative ideas into services and products. It plays an essential role in the fostering of experimenting and innovation culture in academic institutions.',
            style: TextStyle(fontSize: size / 2, letterSpacing: 1.5),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Containerpage(url: logo, height: height / 1.5, width: width)
      ],
    );
  }
}

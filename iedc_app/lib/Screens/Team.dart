import 'package:flutter/material.dart';
import 'package:iedc_app/widgets/assets.dart';
import 'package:iedc_app/widgets/googlefonts.dart';
import 'package:iedc_app/widgets/stack.dart';

class Team extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
      final font = MediaQuery.textScaleFactorOf(context);

    return Scaffold(
      body: SafeArea(
        child: ListView(
        
          children: [
            Center(child: Text('TEAM',style: headingstyle(font*50),)),
            SizedBox(height: height/5,),
            stack(personname: 'MUNEER VK',position: 'NODAL OFFICER',url: logo,),
            SizedBox(height: height/5,),
                    stack(personname: 'MUNEER VK',position: 'NODAL OFFICER',url: logo,),
          ],
        ),
      ),
    );
  }
}

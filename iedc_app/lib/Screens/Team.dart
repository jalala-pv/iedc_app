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
      final space=SizedBox(height: height/5,);

    return Scaffold(
      body: SafeArea(
        child: ListView(
        
          children: [
            Center(child: Text('TEAM',style: headingstyle(font*50),)),
            space,
            stack(personname: 'MUNEER VK',position: 'NODAL OFFICER',url: logo,),
            space,
            stack(personname: 'NIJAS ALI Z',position: 'CEO',url: logo,),
            space,
            stack(personname: 'MUHAMMED SHAHIL',position: 'CTO',url: logo,),
            space,
            stack(personname: 'SHAHID KP',position: 'CO-CTO',url: logo,),
             space,
            stack(personname: 'RAHBAR ZAHID',position: 'CO-CTO',url: logo,),
            space,
            stack(personname: 'HAIFA V',position: 'COO',url: logo,),
            space,
            stack(personname: 'NIZAL',position: 'CO-COO',url: logo,),
            space,
            stack(personname: 'HAYA',position: 'CO-COO',url: logo,),
            space,
            stack(personname: 'MUNEER VK',position: 'NODAL OFFICER',url: logo,),
            space,
            stack(personname: 'NIJAS ALI Z',position: 'CEO',url: logo,),
            space,
            stack(personname: 'MUHAMMED SHAHIL',position: 'CTO',url: logo,),
            space,
            stack(personname: 'SHAHID KP',position: 'CO-CTO',url: logo,),
            


          ],
        ),
      ),
    );
  }
}

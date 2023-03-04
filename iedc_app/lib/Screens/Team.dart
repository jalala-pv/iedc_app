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
    final space = SizedBox(
      height: height / 5,
    );

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Center(
                child: Text(
              'TEAM',
              style: headingstyle(font * 50),
            )),
            Center(
                child: Text(
              'EXECOME 2022-23',
              style: desstyle(font * 30),
            )),
            space,
            stack(
              personname: 'MUNEER VK',
              position: 'NODAL OFFICER',
              url: logo,
            ),
            space,
            stack(
              personname: 'NIJAS ALI Z',
              position: 'CEO',
              url: logo,
            ),
            space,
            stack(
              personname: 'MUHAMMED SHAHIL',
              position: 'CTO',
              url: logo,
            ),
            space,
            stack(
              personname: 'SHAHID KP',
              position: 'CO-CTO',
              url: logo,
            ),
            space,
            stack(
              personname: 'RAHBAR ZAHID',
              position: 'CO-CTO',
              url: logo,
            ),
            space,
            stack(
              personname: 'HAIFA V',
              position: 'COO',
              url: logo,
            ),
            space,
            stack(
              personname: 'NIZAL',
              position: 'CO-COO',
              url: logo,
            ),
            space,
            stack(
              personname: 'HAYA',
              position: 'CO-COO',
              url: logo,
            ),
            space,
            stack(
              personname: 'SWALIH',
              position: 'CMO',
              url: logo,
            ),
            space,
            stack(
              personname: 'AHAMMED SAMEEH',
              position: 'CO-CMO',
              url: logo,
            ),
            space,
            stack(
              personname: 'SABITH',
              position: 'CO-CMO',
              url: logo,
            ),
            space,
            stack(
              personname: 'UA SAMSHAR',
              position: 'CCO',
              url: logo,
            ),
            space,
            stack(
              personname: 'JALWA VP',
              position: 'CO-CCO',
              url: logo,
            ),
            space,
            stack(
              personname: 'RAMZY HISHAM',
              position: 'CO-CCO',
              url: logo,
            ),
            space,
            stack(
              personname: 'MINHAJ',
              position: 'CCO',
              url: logo,
            ),
            space,
            stack(
              personname: 'MUNIBA',
              position: 'CO-CCO',
              url: logo,
            ),
            space,
            stack(
              personname: 'SHAMIL',
              position: 'CO-CCO',
              url: logo,
            ),
            space,
            stack(
              personname: 'ASIF SAJJAD',
              position: 'CFO',
              url: logo,
            ),
            space,
            Center(
                child: Text(
              'SALT',
              style: desstyle(font * 50),
            )),
            space,
            stack(
              personname: 'ASHIF MA',
              position: 'TEAM LEAD',
              url: logo,
            ),
            space,
            stack(
              personname: 'SAVAD',
              position: 'CO-LEAD',
              url: logo,
            ),
            space,
            stack(
              personname: 'MUHAMMED SHAHIL',
              position: 'FACULTY',
              url: logo,
            ),
            space,
            stack(
              personname: 'UA SAMSHAR',
              position: 'FACULTY',
              url: logo,
            ),
            space,
            stack(
              personname: 'JURAIR C',
              position: 'FACULTY',
              url: logo,
            ),
            space,
            Center(
                child: Text(
              'TINKERHUB SSC',
              style: desstyle(font * 45),
            )),
            space,
            stack(
              personname: 'SHAHID KP',
              position: 'TECH LEAD',
              url: logo,
            ),
            space,
            stack(
              personname: 'ABOOBACKER ',
              position: 'COMMUNITY-LEAD',
              url: logo,
            ),
            space,
            stack(
              personname: 'HANNATH E',
              position: 'MEDIA LEAD',
              url: logo,
            ),
            space,
            stack(
              personname: 'JALWA VP',
              position: 'WIT LEAD',
              url: logo,
            ),
            space,
            stack(
              personname: 'JUNAID',
              position: 'CO-COMMUNITY LEAD',
              url: logo,
            ),
            space,
            stack(
              personname: 'RAMZY HISHAM',
              position: 'CO-TECH LEAD',
              url: logo,
            ),
            space,
            stack(
              personname: 'MUHSINA PARVEEN',
              position: 'CO-MEDIA LEAD',
              url: logo,
            ),
            space,
            stack(
              personname: 'SHAMILA',
              position: 'CO-WIT',
              url: logo,
            ),
            space,
            Center(
                child: Text(
              'DEV TEAM',
              style: desstyle(font * 45),
            )),
            space,
            stack(
              personname: 'UA SAMSHAR',
              position: 'TEAM LEAD',
              url: logo,
            ),
            space,
            stack(
              personname: 'ABDUL MUHAIMIN',
              position: 'BACK-END DEVELOPER',
              url: logo,
            ),
            space,
            stack(
              personname: 'MUHAMMED SAHEEN',
              position: 'WEB DEVELOPER',
              url: logo,
            ),
            space,
            stack(
              personname: 'SHAHID K,P',
              position: 'WEB DEVELOPER',
              url: logo,
            ),
            space,
            stack(
              personname: 'ABOOBACKER',
              position: 'WEB DEVELOPER',
              url: logo,
            ),
            space,
            stack(
              personname: 'HAIFA V',
              position: 'CONTENT CREATOR',
              url: logo,
            ),
            space,
            stack(
              personname: 'FADI BASHEER',
              position: 'UI/UX DESIGNER',
              url: logo,
            ),
            space,
            stack(
              personname: 'JALWA VP',
              position: 'UI/UX DESIGNER',
              url: logo,
            ),
          ],
        ),
      ),
    );
  }
}

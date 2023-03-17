import 'package:flutter/material.dart';
import 'package:iedc_app/widgets/ContainerPage.dart';
import 'package:iedc_app/widgets/googlefonts.dart';

import 'data.dart';

class TeamMembersDetails extends StatelessWidget {
  final TeamMembers member;
   TeamMembersDetails({super.key, required this.member});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final space=SizedBox(height: height/20,);
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Row(
            
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10, left: 15),
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black.withOpacity(0.1),
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ),
          Containerpage(
            url: member.image,
            height: height / 2,
            width: width,
            borderradius: height / 30,
          ),
          space,
          Center(child: Text(member.name,style: desstyle(height/20),)),
          Center(child: Text(member.position,style: desstyle(height/30),)),
          Center(child: Text(member.description)),
        ],
      ),
    );
  }
}

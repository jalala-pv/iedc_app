import 'package:flutter/material.dart';
import 'package:iedc_app/widgets/data.dart';
import 'package:iedc_app/widgets/data.dart';
import 'package:iedc_app/widgets/googlefonts.dart';
import 'package:iedc_app/widgets/stack.dart';

import 'detailpage.dart';
// import 'package:team/detailpage.dart';

class TeamMemberList extends StatelessWidget {
  final String title;
  final List<TeamMembers> list;
  const TeamMemberList({super.key, required this.list, required this.title});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Text(
          title,
          style: headingstyle(height / 15),
        ),
        SizedBox(
          height: height / 5,
        ),
        ListView.builder(
          itemCount: list.length,
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemBuilder: (context, index) {
            return Column(
              children: [
                GestureDetector(
              onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                   return TeamMembersDetails(member: list[index]);

                  }
                  )
                 );
              },
                  child: stack(
                    personname: list[index].name,
                    position: list[index].position,
                    url: list[index].image,
                  ),
                ),
                SizedBox(
                  height: height / 5,
                )
              ],
            );
          },
        ),
      ],
    );
  }
}


  
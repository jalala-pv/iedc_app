import 'package:flutter/material.dart';
import 'package:iedc_app/widgets/data.dart';
import 'package:iedc_app/widgets/data.dart';
import 'package:iedc_app/widgets/googlefonts.dart';
import 'package:iedc_app/widgets/stack.dart';
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
                stack(
                  personname: list[index].name,
                  position: list[index].position,
                  url: list[index].image,
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
 // onTap: () {
              //    Navigator.push(context, MaterialPageRoute(builder: (context) {
              //     return ExecomMembersDetails(member: list[index]);

              //    }
              //    )
              //    );
              // },


            //   ListTile(
            //   title: Text(list[index].name),
            //   subtitle: Text(list[index].position),
            //   leading: Image.asset(list[index].image),
            //   trailing: const Icon(Icons.chevron_right_rounded),
             
            // );
  
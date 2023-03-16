import 'package:flutter/material.dart';
import 'package:iedc_app/widgets/assets.dart';
import 'package:iedc_app/widgets/data.dart';
import 'package:iedc_app/widgets/googlefonts.dart';
import 'package:iedc_app/widgets/stack.dart';

import '../widgets/memberlist.dart';


class Team extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          TeamMemberList(list: TeamMembers.Execomembers, title: 'Execome Members'),
          TeamMemberList(list: TeamMembers.Saltmemmbers, title: 'Salt'),
        
        ],
      ),
    );
  }
}

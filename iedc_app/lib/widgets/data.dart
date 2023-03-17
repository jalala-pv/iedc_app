import 'package:flutter/material.dart';
import 'package:iedc_app/widgets/assets.dart';

///achievements
List<Map<String, Object>> getData() {
  var data = [
    {
      'name': 'CERTIFICATES',
      'url': cert,
      'achieveimg': [
        {'url': flower},
        {'url': flower},
        {"url": flower},
        {"url": flower},
        {'url': flower},
        {'url': flower},
        {"url": flower},
        {"url": flower},
        {"url": flower},
      ]
    },
    {
      'name': 'EVENTS',
      'url': flower,
      'achieveimg': [
        {'url': event1},
        {'url': event2},
        {"url": flower},
        {"url": flower},
        {'url': flower},
        {'url': flower},
      ]
    },
  ];
  return data;
}

///contact
class ContactData {
  String text;
  IconData icon;
  ContactData(this.icon, this.text);
}

class ListData {
  List<ContactData> content = [
    ContactData(Icons.call, '+91 7306086088'),
    ContactData(Icons.mail, 'iedcsscollege@gmail.com'),
    ContactData(Icons.location_pin, 'Ssc @Areekode, Malappuram, Kerala')
  ];
}
//team
class TeamMembers {
  String name;
  String image;
  String description;
  String position;
  TeamMembers({
    required this.description,
    required this.name,
    required this.position,
    required this.image,
  });
  static List<TeamMembers> Execomembers= [
    TeamMembers(
        description: 'AAAAAAAAAAAAAAAAAAAAA',
        name: 'MUNEER V.K',
        position: 'NODAL OFFICER',
        image: flower),
    TeamMembers(
        description: 'BBBBBBBBBBBBBBB',
        name: 'NIJAS ALI',
        position: 'CEO',
        image: logo),
  ];
  static List<TeamMembers> Saltmemmbers = [
    TeamMembers(
        description: 'DDDDDDDDDD',
        name: 'SAMSHAR',
        position: 'FACULTY',
        image: logo),
    // TeamMembers(
    //     description: 'description4',
    //     name: 'name4',
    //     position: 'position4',
    //     image: 'image4'),
  ];
  // static List<TeamMembers> TinkerHub = [
  //   TeamMembers(
  //       description: 'description5',
  //       name: 'name5',
  //       position: 'position5',
  //       image: 'image5'),
  //   TeamMembers(
  //       description: 'description6',
  //       name: 'name6',
  //       position: 'position6',
  //       image: 'image6'),
  // ];
}


import 'package:flutter/material.dart';
import 'package:iedc_app/widgets/assets.dart';

///achievements
List<Map<String, Object>> getData() {
  var data = [
    {
      'name': 'CERTIFICATES',
      'url': logo,
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
        {'url': flower},
        {'url': flower},
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

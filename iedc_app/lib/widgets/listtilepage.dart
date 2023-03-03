import 'package:flutter/material.dart';
class contactListtile extends StatelessWidget {
  IconData icon;
  String text;
  contactListtile({required this.icon,required this.text});


  @override
  Widget build(BuildContext context) {
    return ListTile(
    leading: Icon(icon,color: Color.fromARGB(255, 241, 117, 158),),
    title: Text(text,style: TextStyle(color: Colors.white,),),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:iedc_app/widgets/googlefonts.dart';
import 'package:iedc_app/widgets/listtilepage.dart';

class Contacts extends StatelessWidget {
 


  @override
  Widget build(BuildContext context) {
    final font = MediaQuery.textScaleFactorOf(context);
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          Center(
            child: Text(
              'Contact US',
              style: headingstyle(font * 50),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              'Any questions or remark?Just write us a message!',
              style: TextStyle(fontSize: font * 20),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(40.0),
              child: Container(
                width: width,
                height: height / 2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.purple),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: Column(
                      children: [
                        Text(
                          'Contact information ',
                          style: TextStyle(
                              color: Colors.white, fontSize: font * 25),
                        ),
                        Text(
                          '\nFill up the form and our team will get back to you within 24 hours',
                          style: TextStyle(
                              color: Colors.white, fontSize: font * 15),
                        ),
                        contactListtile(
                          icon: Icons.call,
                          text: '+91 7306096088',
                        ),
                        contactListtile(
                          icon: Icons.mail,
                          text: 'iedcsscollege@gmail.com',
                        ),
                        contactListtile(
                          icon: Icons.location_pin,
                          text: ' Ssc @Areekode, Malappuram, kerala',
                        ),
                        
                      ],
                    ),
                  ),
                ),
              ))
        ],
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:iedc_app/widgets/data.dart';
import 'package:iedc_app/widgets/googlefonts.dart';

class Contacts extends StatelessWidget {
  // var contacts=contactData();
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
                        ListView.builder(
                            physics: ScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: ListData().content.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                leading: Icon(
                                  ListData().content[index].icon,
                                  color: Color.fromARGB(255, 241, 117, 158),
                                ),
                                title: Text(
                                  ListData().content[index].text,
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              );
                            })
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

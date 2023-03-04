import 'package:flutter/material.dart';
import 'package:iedc_app/widgets/googlefonts.dart';

class Achievementpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<dynamic, dynamic>;

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.2,
              child: LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth > 600) {
                    return buildGridView(context, 3, args);
                  } else if (constraints.maxWidth > 400) {
                    return buildGridView(context, 2, args);
                  } else {
                    return buildGridView(context, 1, args);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildGridView(
      BuildContext context, int crossAxisCount, Map<dynamic, dynamic> args) {
    final font = MediaQuery.textScaleFactorOf(context);
    return ListView(
      children: [
        Center(
          child: Text(
            "${args['name']}",
            style: headingstyle(font * 50),
          ),
        ),
        GridView.count(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          crossAxisCount: 1,
          children: List.generate(
            args['place'].length,
            (index) {
              return Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(args['place'][index]['url']))),
                margin:
                    EdgeInsets.only(top: 30, left: 50, right: 50, bottom: 30),
              );
            },
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class Team extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                  child: Container(
                width: width / 1.5,
                height: height / 5,
                color: Colors.blue,
              )),
              Positioned(
                  bottom: 70,
                  left: 70,
                  child: Container(
                    width: width / 3,
                    height: height / 4,
                    color: Colors.amber,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

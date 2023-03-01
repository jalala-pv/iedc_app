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
                width: width / 1.4,
                height: height / 4,
                color: Colors.blue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 50),
                      child: Text('muneer'),
                    ),
                  ],
                ),
              )),
              Positioned(
                  bottom: 90,
                  left: 80,
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

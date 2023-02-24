import 'package:flutter/material.dart';
import 'package:iedc_app/Screens/Achievements.dart';
import 'package:iedc_app/Screens/Contacts.dart';
import 'package:iedc_app/Screens/Home.dart';
import 'package:iedc_app/Screens/Team.dart';
import 'package:iedc_app/widgets/assets.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'Screens/About.dart';
import 'Screens/Events.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedindex = 0;

  final List<Widget> pages = [
    HomeScreen(),
    AboutScreen(),
    EventScreen(),
    Achievements(),
    Team(),
    Contacts()
  ];
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppbar(),
        body: pages[selectedindex],
        bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                selectedindex = index;
              });
            },
            showUnselectedLabels: true,
            currentIndex: selectedindex,
            backgroundColor: Colors.black,
            selectedItemColor: Colors.grey,
            unselectedItemColor: Colors.black,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: 'About'),
              BottomNavigationBarItem(icon: Icon(Icons.event), label: 'Events'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.grade), label: 'Achievements'),
              BottomNavigationBarItem(icon: Icon(Icons.group), label: 'Team'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.contacts), label: 'Contacts'),
            ]));
  }

  AppBar buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      toolbarHeight: 60,
      leading: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 5, top: 5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: ClipRRect(
            child: Image.asset(
              logo,
              fit: BoxFit.cover,
              width: 50,
              height: 50,
            ),
            borderRadius: BorderRadius.circular(80),
          ),
        ),
      ),
    );
  }
}

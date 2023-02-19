import 'package:flutter/material.dart';
import 'package:iedc_app/widgets/bottomnavigate.dart';
import 'package:iedc_app/widgets/imgurl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
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
  int selected_index = 0;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: buildAppbar(),
     // drawer: NavigateDrawer(),
      body: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(homeimg), fit: BoxFit.contain)),
      ),
    );
  }

  AppBar buildAppbar() {
    return AppBar(
      toolbarHeight: 60,
      actions: [
        SafeArea(
          child: Container(
            margin: EdgeInsets.only(left: 5, top: 5),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 3),
              shape: BoxShape.circle,
            ),
            child: ClipRRect(
              child: Image.network(
                homeimg,
                fit: BoxFit.cover,
                width: 50,
                height: 50,
              ),
              borderRadius: BorderRadius.circular(80),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
//import 'package:flutter_project/app_bar.dart';
import 'package:flutter_project/lab2/layout.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  int counter = 0;
  void increseCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: HomeAppBar(),
      body: BasicLayout(),
      backgroundColor: Color(0xffb0ccff),
    );
  }
}

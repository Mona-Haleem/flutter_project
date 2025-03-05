import 'package:flutter/material.dart';

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
      // appBar: AppBar(
      //   leading: Icon(Icons.menu),
      //   title: Text(
      //     "Hello World",
      //     style: TextStyle(fontWeight: FontWeight.bold),
      //   ),
      //   centerTitle: true,
      //   backgroundColor: Color(0xffdeacfe),
      //   foregroundColor: Colors.white,
      //
      //   actions: [
      //     IconButton(onPressed: () {}, icon: Icon(Icons.star)),
      //     IconButton(
      //       onPressed: increseCounter,
      //       icon: Text(
      //         '$counter',
      //         style: TextStyle(
      //           fontWeight: FontWeight.bold,
      //           color: Colors.white,
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: Container(color: Colors.blueAccent)),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(child: Container(height: 80, color: Colors.amber)),
                    Expanded(
                      child: Container(
                        height: 80,
                        color: Colors.deepOrangeAccent,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(child: Container(color: Colors.indigo)),
          ],
        ),
      ),
      backgroundColor: Color(0xffb0ccff),
    );
  }
}

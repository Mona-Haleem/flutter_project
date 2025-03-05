import 'package:flutter/material.dart';

class HomeAppBar extends StatefulWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();

  @override 
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _HomeAppBarState extends State<HomeAppBar> {
  int counter = 0;
  void increseCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  AppBar(
         leading: Icon(Icons.menu),
         title: Text(
           "Hello World",
           style: TextStyle(fontWeight: FontWeight.bold),
         ),
         centerTitle: true,
         backgroundColor: Color(0xffdeacfe),
         foregroundColor: Colors.white,
      
         actions: [
           IconButton(onPressed: () {}, icon: Icon(Icons.star)),
           IconButton(
             onPressed: increseCounter,
             icon: Text(
               '$counter',
               style: TextStyle(
                 fontWeight: FontWeight.bold,
                 color: Colors.white,
               ),
             ),
           ),
         ],
       );
  }
}

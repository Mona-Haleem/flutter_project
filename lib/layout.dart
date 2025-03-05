import 'package:flutter/material.dart';

class BasicLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
      );
    
  }
}



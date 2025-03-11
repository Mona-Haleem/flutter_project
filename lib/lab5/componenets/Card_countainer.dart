import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  final Widget child;
  final Color color;
  const CardContainer({
    super.key,
    required this.child,
    this.color = const Color(0xFF333244),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
      width: double.infinity,
    );
  }
}

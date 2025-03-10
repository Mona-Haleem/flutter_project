import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final double radius;
  final String name;
  final bool isOnline;

  const UserAvatar({
    super.key,
    required this.radius,
    required this.name,
    this.isOnline = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: radius,
          backgroundColor: Colors.grey[100],
          child: const Icon(Icons.person, color: Colors.black54),
        ),
        if (isOnline)
          Positioned(
            bottom: 2,
            right: 2,
            child: Container(
              width: radius * 0.3,
              height: radius * 0.3,
              decoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2),
              ),
            ),
          ),
      ],
    );
  }
}

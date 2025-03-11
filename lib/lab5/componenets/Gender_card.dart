import 'package:flutter/material.dart';

import 'Card_countainer.dart';

class GenderCard extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool selected;
  final VoidCallback onTap;

  const GenderCard({
    super.key,
    required this.label,
    required this.icon,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CardContainer(
        color: selected ? Colors.blueAccent:const Color(0xFF333244),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size:100,
              color: Colors.white
            ),
            SizedBox(height: 10),
            Text(
              label,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

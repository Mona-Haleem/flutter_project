import 'package:flutter/material.dart';
import 'Card_countainer.dart';

class CounterCard extends StatelessWidget {
  final String label;
  final int value;
  final VoidCallback onDecrease;
  final VoidCallback onIncrease;

  const CounterCard({
    super.key,
    required this.label,
    required this.value,
    required this.onDecrease,
    required this.onIncrease,
  });

  @override
  Widget build(BuildContext context) {
    return CardContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style:TextStyle(fontSize: 18, color: Colors.white54),
          ),
          Text(
            "$value",
            style:TextStyle(fontSize: 40,color: Colors.white ,fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                heroTag: "$label-decrease",
                mini: true,
                backgroundColor: Color(0xff8B8C9E),
                onPressed: onDecrease,
                child: Icon(Icons.remove, color: Colors.white),
              ),
              const SizedBox(width: 10),
              FloatingActionButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                heroTag: "$label-increase",
                mini: true,
                backgroundColor: Color(0xff8B8C9E),
                onPressed: onIncrease,
                child: const Icon(Icons.add, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

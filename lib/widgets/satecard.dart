import 'package:flutter/material.dart';

class StatCard extends StatelessWidget {
  final String numbers;
  final String label;

  const StatCard({
    super.key,
    required this.numbers,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4.0),
      height: 80,
      width: 80,
      
      color: const Color.fromARGB(58, 225, 224, 221),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              numbers,
              style: const TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 20,

                 // Larger size for numbers
                fontWeight: FontWeight.bold, // Bold numbers
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              label,
              style: const TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 15,
                 // Regular size for label
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

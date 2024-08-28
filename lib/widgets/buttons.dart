import 'package:flutter/material.dart';

class StatefulButton extends StatefulWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onPressed;

  const StatefulButton({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  _StatefulButtonState createState() => _StatefulButtonState();
}

class _StatefulButtonState extends State<StatefulButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Trigger the callback when the button is pressed
        widget.onPressed();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: widget.isSelected ? Color.fromARGB(255, 127, 237, 130) : Color.fromARGB(231, 255, 255, 255),
        side: const BorderSide(color: Colors.green),
        minimumSize: const Size(150, 50), // Ensures both buttons have the same size
      ),
      child: Text(
        widget.text,
        style: TextStyle(
          color: widget.isSelected ? Colors.black : Colors.green,
          fontSize: 18.5
        ),
      ),
    );
  }
}

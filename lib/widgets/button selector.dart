import 'package:flutter/material.dart';
import 'package:single_ui/widgets/buttons.dart';


class ButtonSelector extends StatefulWidget {
  const ButtonSelector({super.key});

  @override
  _ButtonSelectorState createState() => _ButtonSelectorState();
}

class _ButtonSelectorState extends State<ButtonSelector> {
  String selectedButton = ""; 

  void onButtonPressed(String buttonText) {
    setState(() {
      selectedButton = buttonText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        StatefulButton(
          text: "Read",
          isSelected: selectedButton == "Details",
          onPressed: () => onButtonPressed("Details"),
        ),
      SizedBox(width: 30,),
        StatefulButton(
          text: "Add to Shelf",
          isSelected: selectedButton == "More Info",
          onPressed: () => onButtonPressed("More Info"),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.chevron_left,
        size: 30,
        color: Colors.black,
      ),
      onPressed: () {
        print("Back button pressed");
        Navigator.of(context).pop();
      },
      padding: EdgeInsets.zero,
    );
  }
}

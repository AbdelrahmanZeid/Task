
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.btnTextColor,
      required this.btnText,
      required this.btnColor,
      required this.onPressed});
  final Color btnTextColor;
  final String btnText;
  final Color btnColor;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: btnColor,
        minimumSize: const Size(128, 32),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            360,
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        btnText,
        style: TextStyle(color: btnTextColor),
      ),
    );
  }
}

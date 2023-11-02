import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.btnTextColor,
    required this.btnText,
    required this.btnColor,
    required this.btnWidth,
    required this.btnHeight, required this.textFontSize, required this.textFontWeight,
  });
  final Color btnTextColor;
  final String btnText;
  final Color btnColor;

  final double btnWidth;
  final double btnHeight;
  final double textFontSize;
  final FontWeight textFontWeight;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: btnColor,
        minimumSize: Size(btnWidth, btnHeight),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            360,
          ),
        ),
      ),
      onPressed: () {},
      child: Text(
        btnText,
        style: TextStyle(
          color: btnTextColor,
          fontSize: textFontSize,
          fontWeight: textFontWeight,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:task/presentation/resources/font_manager.dart';
import 'package:task/presentation/resources/values_manager.dart';

class TabBarItem extends StatelessWidget {
  const TabBarItem(
      {super.key,
      required this.itemColor,
      required this.itemText,
      required this.itemTextColor});
  final Color itemColor;
  final Color itemTextColor;
  final String itemText;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      decoration: BoxDecoration(
        color: itemColor,
        borderRadius: BorderRadius.circular(
          360,
        ),
      ),
      child: Center(
        child: Text(
          itemText,
          style: TextStyle(
            fontSize: AppSize.s14,
            fontWeight: FontWeightManager.regular,
            color: itemTextColor,
          ),
        ),
      ),
    );
  }
}

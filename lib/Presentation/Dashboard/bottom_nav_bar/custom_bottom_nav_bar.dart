import 'package:flutter/material.dart';
   import 'package:task/presentation/Resources/color_manager.dart';
 import 'package:task/presentation/Resources/values_manager.dart';
import 'package:task/presentation/dashboard/bottom_nav_bar/nav_bar_slots.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(top: AppPadding.p6),
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: ColorManager.appBarColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(
              0.5,
            ),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(
              0,
              3,
            ),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: navBarSlotList,
      ),
    );
  }
}


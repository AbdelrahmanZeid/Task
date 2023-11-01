import 'package:flutter/material.dart';
import 'package:task/presentation/Resources/app_strings.dart';
import 'package:task/presentation/Resources/assets_manager.dart';
import 'package:task/presentation/Resources/color_manager.dart';
import 'package:task/presentation/Resources/font_manager.dart';
import 'package:task/presentation/Resources/values_manager.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: AppPadding.p6),
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

List<Widget> navBarSlotList = [
  NavBarSlot(
    assetName: AssetsManager.home,
    text: AppStrings.home,
    assetColor: ColorManager.mainColor,
    textColor: ColorManager.mainColor,
  ),
   NavBarSlot(
    assetName: AssetsManager.dashBoard,
    text: AppStrings.assets,
    assetColor: ColorManager.unActiveNavBar,
    textColor: ColorManager.unActiveNavBar,
  ),
   NavBarSlot(
    assetName: AssetsManager.supportAgent,
    text: AppStrings.support,
    assetColor: ColorManager.unActiveNavBar,
    textColor: ColorManager.unActiveNavBar,
  ),
   NavBarSlot(
    assetName: AssetsManager.person,
    text: AppStrings.profile,
    assetColor:ColorManager.unActiveNavBar,
    textColor: ColorManager.unActiveNavBar,
  ),
];

class NavBarSlot extends StatelessWidget {
  const NavBarSlot(
      {super.key,
      required this.assetName,
      required this.text,
      required this.assetColor,
      required this.textColor});
  final String assetName;

  final Color assetColor;
  final Color textColor;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSize.s72,
      height: AppSize.s60,
      child: Column(
        children: [
          Image.asset(
            assetName,
            width: AppSize.s24,
            height: AppSize.s24,
            color: assetColor,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: AppSize.s15,
              fontWeight: FontWeightManager.regular,
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}

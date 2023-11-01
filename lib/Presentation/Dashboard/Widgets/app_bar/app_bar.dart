import 'package:flutter/material.dart';
import 'package:task/Presentation/Resources/color_manager.dart';
import 'package:task/Presentation/Resources/values_manager.dart';

class CustomAppBar{
  static Widget getLeading() {
  return Container(
    width: AppSize.s24,
    height: AppSize.s24,
    color: ColorManager.boundingBoxColor.withOpacity(.02),
    child: Padding(
      padding: const EdgeInsets.symmetric(
        vertical: AppPadding.p6,
        horizontal: AppPadding.p3,
      ),
      child: Icon(
        Icons.menu,
        color: ColorManager.menuItemColor,
      ),
    ),
  );
}
}
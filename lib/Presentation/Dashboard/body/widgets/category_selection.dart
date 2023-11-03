 import 'package:flutter/material.dart';
 import 'package:task/presentation/resources/assets_manager.dart';
import 'package:task/presentation/resources/color_manager.dart';
import 'package:task/presentation/resources/font_manager.dart';
import 'package:task/presentation/resources/values_manager.dart';

//create custom categoty selection

class CategorySelection extends StatelessWidget {
 const CategorySelection({
    super.key,
    required this.name,
    required this.id,
  });
  final String name;
  final int id;

  @override
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: AppPadding.p3,
      ),
      child: Card(
        elevation: .2,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: AppPadding.p8,
          ),
          height: 40,
          decoration: BoxDecoration(
            border: Border.all(
              color: ColorManager.appBarColor,
            ),
            borderRadius: BorderRadius.circular(
              8,
            ),
          ),
          child: Row(
            children: [
              Text(
                '${id}',
                style: const TextStyle(
                  fontSize: AppSize.s14,
                  fontWeight: FontWeightManager.bold,
                ),
              ),
              const SizedBox(
                width: AppSize.s10,
              ),
              Text(
                name,
                style: const TextStyle(
                  fontSize: AppSize.s16,
                ),
              ),
              const Spacer(),
              Image.asset(
                AssetsManager.rightArrow,
                width: 15.57,
                color: ColorManager.searchIconColor,
                height: 11.13,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

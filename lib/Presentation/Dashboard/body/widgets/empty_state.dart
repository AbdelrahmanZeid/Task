import 'package:flutter/material.dart';
import 'package:task/presentation/resources/app_strings.dart';
import 'package:task/presentation/resources/assets_manager.dart';
import 'package:task/presentation/resources/color_manager.dart';
import 'package:task/presentation/resources/font_manager.dart';
import 'package:task/presentation/resources/values_manager.dart';

class EmptyState extends StatelessWidget {
  const EmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 296,
      child: Column(
        children: [
          Image.asset(
            AssetsManager.emptyState,
            width: 250,
            height: 120,
          ),
          const SizedBox(height: AppSize.s4,),
         Text(

            AppStrings.noOrderFoundTitle,
            style: TextStyle(
              color: ColorManager.noTitleFound,
              fontWeight: FontWeightManager.bold,
              fontSize: AppSize.s22,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            AppStrings.noOrderFoundSubTitle,
             style: TextStyle(
              fontWeight: FontWeightManager.light,
              fontSize: AppSize.s20,
                            color: ColorManager.subTitleColor

            ),
            textAlign: TextAlign.center,

          ),
        ],
      ),
    );
  }
}

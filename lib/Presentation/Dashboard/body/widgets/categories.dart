import 'package:flutter/material.dart';
import 'package:task/presentation/dashboard/body/widgets/category_selection.dart';
import 'package:task/presentation/resources/app_strings.dart';
import 'package:task/presentation/resources/assets_manager.dart';
import 'package:task/presentation/resources/color_manager.dart';
import 'package:task/presentation/resources/font_manager.dart';
import 'package:task/presentation/resources/values_manager.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppStrings.categoriesView,
              style: TextStyle(
                fontSize: AppSize.s14,
                color: ColorManager.titleColor,
                fontWeight: FontWeightManager.regular,
              ),
            ),
            Text(
              AppStrings.seeAll,
              style: TextStyle(
                color: ColorManager.seeAllColor,
                fontWeight: FontWeightManager.regular,
                fontSize: AppSize.s14,
                decoration: TextDecoration.underline,
              ),
              textAlign: TextAlign.right,
            ),
          ],
        ),
        const SizedBox(
          height: AppSize.s8,
        ),
        Expanded(
          child: ListView(
            children: const [
              CategorySelection(
                text: AppStrings.constructions,
                image: AssetsManager.construction,
              ),
              CategorySelection(
                text: AppStrings.insureance,
                image: AssetsManager.insurance,
              ),
              CategorySelection(
                text: AppStrings.legal,
                image: AssetsManager.legal,
              ),
              CategorySelection(
                text: AppStrings.buyAndSell,
                image: AssetsManager.buyAndSell,
              ),
              CategorySelection(
                text: AppStrings.accountingServices,
                image: AssetsManager.accountingService,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:task/presentation/dashboard/body/middle_body_section.dart';
import 'package:task/presentation/dashboard/body/upper_body_section.dart';
import 'package:task/presentation/dashboard/body/widgets/category_selection.dart';
import 'package:task/presentation/dashboard/body/widgets/tab_bar_item.dart';
import 'package:task/presentation/resources/app_strings.dart';
import 'package:task/presentation/resources/assets_manager.dart';
import 'package:task/presentation/resources/color_manager.dart';
import 'package:task/presentation/resources/font_manager.dart';
import 'package:task/presentation/resources/values_manager.dart';

class CustomBody extends StatelessWidget {
  const CustomBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        UpperBodySection(),
        SizedBox(
          height: AppSize.s10,
        ),
        MiddelBodySection(),
        SizedBox(
          height: AppSize.s10,
        ),
        LowerBodySection(),
        SizedBox(
          height: AppSize.s10,
        ),
      ],
    );
  }
}

class LowerBodySection extends StatelessWidget {
  const LowerBodySection({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.maxFinite,
        color: ColorManager.appBarColor,
        padding: const EdgeInsets.symmetric(
          vertical: AppPadding.p16,
          horizontal: AppPadding.p20,
        ),
        child: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              Container(
                height: 50,
                padding: const EdgeInsets.all(
                  AppPadding.p8,
                ),
                decoration: BoxDecoration(
                  color: ColorManager.appBarColor,
                  border: Border.all(
                    color: ColorManager.categoryColorOne,
                  ),
                  borderRadius: BorderRadius.circular(
                    AppSize.s12,
                  ),
                ),
                child: Container(
                  child: TabBar(
                    indicator: const BoxDecoration(),
                    tabs: [
                      Tab(
                        child: TabBarItem(
                          itemColor: ColorManager.mainColor,
                          itemText: AppStrings.categoriesButtonText,
                          itemTextColor: ColorManager.categoryColorOne,
                        ),
                      ),
                      Tab(
                        child: TabBarItem(
                          itemColor: ColorManager.categoryColorOne,
                          itemText: AppStrings.servicesButtonText,
                          itemTextColor: ColorManager.menuItemColor,
                        ),
                      ),
                      Tab(
                        child: TabBarItem(
                          itemColor: ColorManager.orderColor,
                          itemText: AppStrings.ordersNumButtonText,
                          itemTextColor: ColorManager.menuItemColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: AppSize.s8,
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    Categories(),
                    EmptyState(),
                    EmptyState(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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

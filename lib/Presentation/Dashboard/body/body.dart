import 'package:flutter/material.dart';
import 'package:task/presentation/dashboard/body/middle_body_section.dart';
import 'package:task/presentation/dashboard/body/upper_body_section.dart';
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
          height: AppSize.s8,
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
                    indicator:const BoxDecoration(),
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
                height: AppSize.s4,
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Column(
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
                    ),
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

class CategorySelection extends StatelessWidget {
  const CategorySelection({super.key, required this.text, required this.image});
  final String text;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: AppPadding.p3,
      ),
      child: Card(
        elevation: .1,
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
              Image.asset(
                image,
                width: 24,
                height: 24,
              ),
              const SizedBox(
                width: AppSize.s10,
              ),
              Text(
                text,
                style: TextStyle(
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

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:task/presentation/dashboard/body/widgets/categories.dart';
import 'package:task/presentation/dashboard/body/widgets/empty_state.dart';
import 'package:task/presentation/dashboard/body/widgets/tab_bar_item.dart';
import 'package:task/presentation/resources/app_strings.dart';
import 'package:task/presentation/resources/color_manager.dart';
import 'package:task/presentation/resources/values_manager.dart';

class LowerBodySection extends StatefulWidget {
  const LowerBodySection({super.key});

  @override
  State<LowerBodySection> createState() => _LowerBodySectionState();
}

class _LowerBodySectionState extends State<LowerBodySection> {
  @override
  int currentIndex = 0;

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
                    onTap: (index) {
                      currentIndex = index;
                      setState(() {
                        
                      });
                      print('$currentIndex');
                    },
                    indicator: const BoxDecoration(),
                    tabs: [
                      Tab(
                        child: TabBarItem(
                          itemColor:currentIndex==0? ColorManager.mainColor:ColorManager.orderColor,
                          itemText: AppStrings.categoriesButtonText,
                          itemTextColor:currentIndex==0? ColorManager.categoryColorOne:ColorManager.menuItemColor,
                        ),
                      ),
                      Tab(
                        child: TabBarItem(
                          itemColor:currentIndex==1? ColorManager.mainColor:ColorManager.categoryColorOne,
                          itemText: AppStrings.servicesButtonText,
                          itemTextColor:currentIndex==1? ColorManager.categoryColorOne :ColorManager.menuItemColor,
                        ),
                      ),
                      Tab(
                        child: TabBarItem(
                          itemColor:currentIndex==2? ColorManager.mainColor:ColorManager.orderColor,
                          itemText: AppStrings.ordersNumButtonText,
                          itemTextColor:currentIndex==2? ColorManager.categoryColorOne :ColorManager.menuItemColor,
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

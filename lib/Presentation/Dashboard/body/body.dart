import 'package:flutter/material.dart';
import 'package:task/presentation/custom_widgets/custom_button.dart';
import 'package:task/presentation/dashboard/body/middle_body_section.dart';
import 'package:task/presentation/dashboard/body/upper_body_section.dart';
import 'package:task/presentation/resources/app_strings.dart';
import 'package:task/presentation/resources/color_manager.dart';
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
          height: AppSize.s4,
        ),
       // LowerBodySection(),
      ],
    );
  }
}

class LowerBodySection extends StatelessWidget {
  const LowerBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorManager.appBarColor,
      padding: const EdgeInsets.symmetric(
        vertical: AppPadding.p4,
        horizontal: AppPadding.p16,
      ),
      width: double.infinity,
      height: 310,
      child: ListView(
        children: [
          CustomTabBar(),
        ],
      ),
    );
  }
}

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  // final tabController = TabController(
  //   length: 3,
  //   vsync: AnimatedListState(),
  // );
  @override
 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        AppPadding.p8,
      ),
      child: Container(
        width: 335,
        height: 48,
        decoration: BoxDecoration(
          border: Border.all(
            color: ColorManager.categoryColorOne,
          ),
          borderRadius: BorderRadius.circular(
            AppSize.s12,
          ),
        ),
        child: TabBar(
         // controller: tabController,
          tabs: [
            CustomButton(
              btnTextColor: ColorManager.appBarColor,
              btnText: AppStrings.orderButtonText,
              btnColor: ColorManager.mainColor,
              onPressed: () {},
            ),
            CustomButton(
              btnTextColor: ColorManager.appBarColor,
              btnText: AppStrings.orderButtonText,
              btnColor: ColorManager.mainColor,
              onPressed: () {},
            ),
            CustomButton(
              btnTextColor: ColorManager.appBarColor,
              btnText: AppStrings.orderButtonText,
              btnColor: ColorManager.mainColor,
              onPressed: () {},
            ),
          ],
          onTap: (value) {},
        ),
      ),
    );
  }
}

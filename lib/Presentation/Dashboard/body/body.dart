import 'package:flutter/material.dart';
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
        SizedBox(
          height: AppSize.s16,
        ),
        UpperBodySection(),
        SizedBox(
          height: AppSize.s10,
        ),
        MiddelBodySection(),
      ],
    );
  }
}

class MiddelBodySection extends StatelessWidget {
  const MiddelBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSize.s20,
      ),
      child: Container(
        width: 380,
        height: 170,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  AppSize.s8,
                ),
                color: ColorManager.midSectionColor,
              ),
              height: 152,
              child: Row(
                children: [
                  SizedBox(
                    width: 183,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: AppPadding.p3,
                      ),
                      child: Column(
                        children: [
                          const Spacer(),
                          const Text(
                            AppStrings.title,
                            style: TextStyle(
                              fontSize: AppSize.s16,
                              fontWeight: FontWeightManager.semiBold,
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: CustomButton(
                              btnTextColor: ColorManager.appBarColor,
                              btnText: AppStrings.orderButtonText,
                              btnColor: ColorManager.mainColor,
                              onPressed: () {},
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ),
                  Image.asset(
                    AssetsManager.manPresentation,
                    width: 144,
                    height: 144,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.btnTextColor,
      required this.btnText,
      required this.btnColor,
      required this.onPressed});
  final Color btnTextColor;
  final String btnText;
  final Color btnColor;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: btnColor,
        minimumSize: const Size(128, 32),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            360,
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        btnText,
        style: TextStyle(color: btnTextColor),
      ),
    );
  }
}

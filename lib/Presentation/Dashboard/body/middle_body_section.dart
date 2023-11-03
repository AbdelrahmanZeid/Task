import 'package:flutter/material.dart';
import 'package:task/presentation/custom_widgets/custom_button.dart';
import 'package:task/presentation/resources/app_strings.dart';
import 'package:task/presentation/resources/assets_manager.dart';
import 'package:task/presentation/resources/color_manager.dart';
import 'package:task/presentation/resources/font_manager.dart';
import 'package:task/presentation/resources/values_manager.dart';
//create middle section of app
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
                              btnWidth: 128,
                              btnHeight: 32,
                              textFontSize: AppPadding.p14,
                              textFontWeight: FontWeightManager.bold,
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
            const SizedBox(
              height: AppSize.s8,
            ),
            SizedBox(
              height: AppSize.s8,
              width: 56,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    AssetsManager.ellipse,
                  ),
                  Image.asset(
                    AssetsManager.rectangle,
                  ),
                  Image.asset(
                    AssetsManager.ellipse,
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

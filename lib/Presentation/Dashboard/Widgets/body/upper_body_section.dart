import 'package:flutter/material.dart';
import 'package:task/Presentation/Resources/app_strings.dart';
import 'package:task/Presentation/Resources/assets_manager.dart';
import 'package:task/Presentation/Resources/color_manager.dart';
import 'package:task/Presentation/Resources/font_manager.dart';
import 'package:task/Presentation/Resources/values_manager.dart';

class UpperBodySection extends StatelessWidget {
  const UpperBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: AppPadding.p12,
        right: AppPadding.p20,
        bottom: AppPadding.p8,
        left: AppSize.s20,
      ),
      width: 380,
      height: 171,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          AppSize.s8,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 335,
            height: 23,
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(
                    AppSize.s14,
                  ),
                  child: Image.asset(
                    AssetsManager.manImage,
                    width: AppSize.s24,
                    height: AppSize.s24,
                  ),
                ),
                const SizedBox(
                  width: AppSize.s4,
                ),
                SizedBox(
                  width: 86,
                  height: 20,
                  child: Text(
                    AppStrings.heyAhmed,
                    style: TextStyle(
                      fontWeight: FontWeightManager.bold,
                      fontSize: AppSize.s16,
                      color: ColorManager.menuItemColor,
                    ),
                  ),
                ),
                Image.asset(
                  AssetsManager.imageOne,
                  width: AppSize.s20,
                  height: AppSize.s20,
                ),
                const Spacer(),
                Container(
                  width: AppSize.s24,
                  height: AppSize.s24,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: AppPadding.p3,
                      left: AppPadding.p3,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        size: AppSize.s17,
                        color: ColorManager.searchIconColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: AppSize.s12,
          ),
          const Text(
            AppStrings.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: AppSize.s18,
              fontWeight: FontWeightManager.bold,
            ),
          ),
          Text(
            AppStrings.subTitle,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: AppSize.s14,
              fontWeight: FontWeightManager.light,
              color: ColorManager.subTitleColor,
            ),
          ),
        ],
      ),
    );
  }
}

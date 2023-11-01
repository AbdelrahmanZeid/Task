import 'package:flutter/material.dart';
import 'package:task/Presentation/Dashboard/Widgets/body/upper_body_section.dart';
import 'package:task/Presentation/Resources/app_strings.dart';
import 'package:task/Presentation/Resources/assets_manager.dart';
import 'package:task/Presentation/Resources/color_manager.dart';
import 'package:task/Presentation/Resources/values_manager.dart';
import 'package:task/Presentation/resources/font_manager.dart';

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
      ],
    );
  }
}


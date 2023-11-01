import 'package:flutter/material.dart';
import 'package:task/Presentation/Dashboard/Widgets/body/upper_body_section.dart';
import 'package:task/presentation/Resources/values_manager.dart';
  
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
          height: AppPadding.p10,
        ),
      ],
    );
  }
}


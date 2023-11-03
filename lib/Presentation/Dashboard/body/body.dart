import 'package:flutter/material.dart';
import 'package:task/presentation/dashboard/body/lower_body_section.dart';
import 'package:task/presentation/dashboard/body/middle_body_section.dart';
import 'package:task/presentation/dashboard/body/upper_body_section.dart';
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

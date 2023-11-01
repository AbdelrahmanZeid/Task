import 'package:flutter/material.dart';
import 'package:task/Presentation/Dashboard/Widgets/app_bar/app_bar.dart';
import 'package:task/Presentation/Resources/app_strings.dart';
import 'package:task/Presentation/Resources/color_manager.dart';
import 'package:task/Presentation/Resources/font_manager.dart';
import 'package:task/presentation/resources/values_manager.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:CustomAppBar. getLeading(),
        title: getTitle(),
        centerTitle: true,
      ),
    );
  }
}




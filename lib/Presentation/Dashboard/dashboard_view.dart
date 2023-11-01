import 'package:flutter/material.dart';
import 'package:task/Presentation/Dashboard/Widgets/app_bar/app_bar.dart';
import 'package:task/Presentation/Dashboard/Widgets/body/body.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CustomAppBar.getLeading(),
        title: CustomAppBar.getTitle(),
        centerTitle: true,
      ),
      body:const CustomBody(),
    );
  }
}

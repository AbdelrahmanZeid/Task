import 'package:flutter/material.dart';
import 'package:task/presentation/dashboard/app_bar/app_bar.dart';
import 'package:task/presentation/dashboard/body/body.dart';
import 'package:task/presentation/dashboard/bottom_nav_bar/custom_bottom_nav_bar.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CustomAppBar.getLeading(),
        title: CustomAppBar.getTitle(),
      ),
      body: const CustomBody(),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}

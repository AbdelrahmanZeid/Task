import 'package:flutter/material.dart';
import 'package:task/presentation/dashboard/app_bar/app_bar.dart';
 import 'package:task/presentation/dashboard/body/body.dart';
 
class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CustomAppBar.getLeading(),
        title: CustomAppBar.getTitle(),
        
      ),
      body:const CustomBody(),
    );
  }
}

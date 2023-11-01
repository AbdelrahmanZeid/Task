import 'package:flutter/material.dart';
import 'package:task/Presentation/Dashboard/dashboard_view.dart';

// Entery point
class AppTask extends StatelessWidget {
  const AppTask({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:const DashBoardView(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
    );
  }
}

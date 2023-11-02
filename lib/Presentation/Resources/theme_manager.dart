import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task/Presentation/Resources/color_manager.dart';
import 'package:task/presentation/resources/constants.dart';

ThemeData getAppTheme() => ThemeData(
      // add font family
      fontFamily: 'Outfit',
      // add app bar theme
      appBarTheme: AppBarTheme(
        centerTitle: true,
        elevation: appBarElevation,
        backgroundColor: ColorManager.appBarColor,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
          statusBarColor: ColorManager.appBarColor,
        
        ),
      ),
    );

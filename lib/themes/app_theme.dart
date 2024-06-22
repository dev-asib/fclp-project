import 'package:fclp_app/utils/color_palette.dart';
import 'package:flutter/material.dart';

ThemeData lightThemeData() {
  return ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.backgroundColor,
    textTheme: TextTheme(
      bodySmall: TextStyle(
          color: AppColors.green, fontWeight: FontWeight.bold, fontSize: 15),
      titleLarge: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30,
        color: AppColors.green,
      ),
      titleMedium: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
        color: AppColors.green,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      suffixIconColor: AppColors.green,
      prefixIconColor: AppColors.grey,
      hintStyle: TextStyle(
        color: AppColors.grey,
        fontWeight: FontWeight.bold,
        fontSize: 20
      ),
      border: InputBorder.none,
      fillColor: Colors.white,
      filled: true,


    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.green,
          foregroundColor: Colors.white,
          fixedSize: Size.fromWidth(double.maxFinite),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          textStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          )),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        backgroundColor: AppColors.transparent,
        foregroundColor: AppColors.red,
        overlayColor: AppColors.white,
        fixedSize: Size.fromWidth(double.maxFinite),
        textStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        side: BorderSide(
            color: AppColors.red,
            width: 2,
            style: BorderStyle.solid,
            strokeAlign: BorderSide.strokeAlignOutside),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),

    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        size: 40,
        color: AppColors.themeColor,
      ),
      centerTitle: true,
      backgroundColor: AppColors.white,
      foregroundColor: Colors.white,
      titleTextStyle: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        fontFamily: "BlackOpsOne",
        color: AppColors.themeColor
      )
    ),

    drawerTheme: DrawerThemeData(
      backgroundColor: AppColors.backgroundColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero)
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColors.red,
      unselectedItemColor: AppColors.white,
      backgroundColor: AppColors.green,
      elevation: 16,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedIconTheme: IconThemeData(
        color: AppColors.red,
        size: 30,
      ),
      unselectedIconTheme: IconThemeData(
        color: AppColors.white,
        size: 25,
      ),
      selectedLabelStyle: TextStyle(
        color: AppColors.red,
        fontWeight: FontWeight.bold,
        fontSize: 16
      ),
      unselectedLabelStyle: TextStyle(
        color: AppColors.green,
        fontWeight: FontWeight.bold,
        fontSize: 12
      ),
    ),


  );
}



ThemeData darkThemeData() {
  return ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.backgroundColor,
    textTheme: TextTheme(
      bodySmall: TextStyle(
          color: AppColors.green, fontWeight: FontWeight.bold, fontSize: 15),
      titleLarge: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30,
        color: AppColors.green,
      ),
      titleMedium: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
        color: AppColors.green,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      suffixIconColor: AppColors.green,
      prefixIconColor: AppColors.grey,
      hintStyle: TextStyle(
        color: AppColors.grey,
        fontWeight: FontWeight.bold,
        fontSize: 20
      ),
      border: InputBorder.none,

    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.green,
          foregroundColor: Colors.white,
          fixedSize: Size.fromWidth(double.maxFinite),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          textStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          )),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        backgroundColor: AppColors.transparent,
        foregroundColor: AppColors.red,
        overlayColor: AppColors.white,
        fixedSize: Size.fromWidth(double.maxFinite),
        textStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        side: BorderSide(
            color: AppColors.red,
            width: 2,
            style: BorderStyle.solid,
            strokeAlign: BorderSide.strokeAlignOutside),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),

    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        size: 40,
        color: AppColors.themeColor,
      ),
      centerTitle: true,
      backgroundColor: AppColors.white,
      foregroundColor: Colors.white,
      titleTextStyle: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        fontFamily: "BlackOpsOne",
        color: AppColors.themeColor
      )
    ),

    drawerTheme: DrawerThemeData(
      backgroundColor: AppColors.backgroundColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero)
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColors.red,
      unselectedItemColor: AppColors.white,
      backgroundColor: AppColors.green,
      elevation: 16,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedIconTheme: IconThemeData(
        color: AppColors.red,
        size: 30,
      ),
      unselectedIconTheme: IconThemeData(
        color: AppColors.white,
        size: 25,
      ),
      selectedLabelStyle: TextStyle(
        color: AppColors.red,
        fontWeight: FontWeight.bold,
        fontSize: 16
      ),
      unselectedLabelStyle: TextStyle(
        color: AppColors.green,
        fontWeight: FontWeight.bold,
        fontSize: 12
      ),
    ),


  );
}





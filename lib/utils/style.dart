import 'package:fclp_app/utils/color_palette.dart';
import 'package:flutter/material.dart';

ButtonStyle drawerButtonStyle = ElevatedButton.styleFrom(
  backgroundColor: AppColors.green,
  foregroundColor: Colors.white,
  fixedSize: Size.fromWidth(double.maxFinite),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(50),
  ),
  textStyle: TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold
  )
);

import 'package:fclp_app/utils/color_palette.dart';
import 'package:flutter/material.dart';

AppBar CustomAppBar() {
  return AppBar(
    surfaceTintColor: AppColors.white,
    title: Text("FCLP"),
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.notifications_outlined),
      ),
    ],
  );
}

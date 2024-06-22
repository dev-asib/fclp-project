import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fclp_app/Controllers/air_ticket_controller.dart';
import 'package:fclp_app/Controllers/product_category_view_controller.dart';
import 'package:fclp_app/Controllers/product_controller.dart';
import 'package:fclp_app/Controllers/profile_controller.dart';
import 'package:fclp_app/app.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProfileController()),
        ChangeNotifierProvider(create: (context) => AirTicketController()),
        ChangeNotifierProvider(create: (context) => ProdudctCategoryViewController()),
        ChangeNotifierProvider(create: (context) => ProductController()),
      ],
      child: FCLP(),
    ),
  );
}

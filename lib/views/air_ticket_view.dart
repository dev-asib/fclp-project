import 'package:fclp_app/utils/color_palette.dart';
import 'package:fclp_app/views/air_ticket_apply_view.dart';
import 'package:fclp_app/widgets/global_widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class AirTicketView extends StatefulWidget {
  const AirTicketView({super.key});

  @override
  State<AirTicketView> createState() => _AirTicketViewState();
}

class _AirTicketViewState extends State<AirTicketView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          Container(
            height: 50,
            margin: EdgeInsets.all(16),
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: AppColors.green,
                width: 3
              ),
            ),
            child: Center(
              child: Text(
                "এয়ার টিকেট এর আবেদন",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: AppColors.green
                ),
              ),
            ),
          ),
          Expanded(child: AirTicketApplyView()),
        ],
      ),
    );
  }
}

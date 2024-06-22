import 'package:fclp_app/utils/assets_pahts.dart';
import 'package:fclp_app/utils/color_palette.dart';
import 'package:fclp_app/views/auth_view/bkash_point_withdraw_form_view.dart';
import 'package:fclp_app/views/income_point_history_view.dart';
import 'package:fclp_app/views/auth_view/nagad_point_withdraw_form_view.dart';
import 'package:fclp_app/views/point_withdraw_history_view.dart';
import 'package:fclp_app/widgets/global_widgets/custom_app_bar.dart';
import 'package:fclp_app/widgets/global_widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IncomePointsView extends StatefulWidget {
  const IncomePointsView({super.key});

  @override
  State<IncomePointsView> createState() => _IncomePointsViewState();
}

class _IncomePointsViewState extends State<IncomePointsView> {
  bool isPaymentIcon = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CustomAppBar(),
      drawer: CustomDrawer(
        fromIncomePointView: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Card(
                elevation: 5,
                child: Container(
                  width: double.maxFinite,
                  color: Colors.white,
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("assets/images/earning.png"),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Text(
                        "আমার ইনকাম পয়েন্ট",
                        style: TextStyle(
                            color: AppColors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Text(
                        "ট 100",
                        style: TextStyle(
                            color: AppColors.red,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              buildPaymentInfoSection(
                context: context,
                leadingIcon: AssetsPahts.incomeHistory,
                trailingIcon: Icons.arrow_forward,
                title: "আপনার পয়েন্ট উত্তোলনের হিস্ট্রি।",
                onTap: _onTapPointWithfrawHistoryButton,
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                color: AppColors.white,
                child: ExpansionTile(
                  onExpansionChanged: (value) {
                    if (mounted) {
                      setState(() {
                        isPaymentIcon = !value;
                      });
                    }
                  },
                  leading: Container(
                    height: 30,
                    width: 30,
                    child: Image.asset(
                      AssetsPahts.withdraw,
                      fit: BoxFit.fill,
                    ),
                  ),
                  title: Text(
                    "ইনকাম পয়েন্টস উত্তোলন করুন।",
                    style: TextStyle(
                        color: AppColors.green,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(
                    isPaymentIcon == true
                        ? Icons.arrow_forward
                        : Icons.arrow_downward,
                    color: AppColors.green,
                    size: 30,
                  ),
                  children: [
                    Container(
                      height: 100,
                      width: double.maxFinite,
                      decoration: BoxDecoration(),
                      padding: EdgeInsets.all(16),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: _onTapBkashButton,
                              child: SvgPicture.asset(
                                AssetsPahts.bkashSvg,
                                width: 150,
                              ),
                            ),
                            InkWell(
                              onTap: _onTapNagadButton,
                              child: SvgPicture.asset(
                                AssetsPahts.nagadSvg,
                                width: 150,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              buildPaymentInfoSection(
                context: context,
                leadingIcon: AssetsPahts.pointHistory,
                trailingIcon: Icons.arrow_forward,
                title: "ইনকাম পয়েন্টগুলি দেখুন",
                onTap: _onTapIncomePointHistoryButton,
              ),
            ],
          ),
        ),
      ),
    );
  }

  InkWell buildPaymentInfoSection({
    required BuildContext context,
    required String leadingIcon,
    required IconData trailingIcon,
    required String title,
    required VoidCallback? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Card(
        color: AppColors.white,
        child: ListTile(
          leading: Container(
            height: 30,
            width: 30,
            child: Image.asset(
              leadingIcon,
              fit: BoxFit.fill,
            ),
          ),
          title: Text(
            title,
            style: TextStyle(
                color: AppColors.green,
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
          trailing: Icon(
            trailingIcon,
            color: AppColors.green,
            size: 30,
          ),
        ),
      ),
    );
  }

  void _onTapBkashButton() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const BkashPointWithdrawFormView(),
      ),
    );
  }

  void _onTapNagadButton() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const NagadPointWithdrawFormView(),
      ),
    );
  }

  void _onTapPointWithfrawHistoryButton() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const PointWithdrawHistoryView(),
      ),
    );
  }

  void _onTapIncomePointHistoryButton() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const IncomePointHistoryView(),
      ),
    );
  }
}

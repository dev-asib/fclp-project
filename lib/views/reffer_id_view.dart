import 'package:fclp_app/utils/color_palette.dart';
import 'package:fclp_app/widgets/global_widgets/custom_app_bar.dart';
import 'package:fclp_app/widgets/global_widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class RefferIdView extends StatefulWidget {
  const RefferIdView({super.key});

  @override
  State<RefferIdView> createState() => _RefferIdViewState();
}

class _RefferIdViewState extends State<RefferIdView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: CustomDrawer(
        fromRefferIdView: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "আপনার রেফার আইডি",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: AppColors.green),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Text(
                    "Ref ID: 1234",
                    style: TextStyle(
                        color: AppColors.green,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "নোটিশ",
                  style: TextStyle(
                    color: AppColors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "01. ১ম জেনারেশন রেফারের জন্য আপনি পাবেন ৫০ কয়েন।",
                  style: TextStyle(
                    color: AppColors.green,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "02. ২য় জেনারেশন রেফারের জন্য আপনি পাবেন ১০ কয়েন।",
                  style: TextStyle(
                    color: AppColors.green,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "03. ৩য় জেনারেশন রেফারের জন্য আপনি পাবেন ১০ কয়েন।",
                  style: TextStyle(
                    color: AppColors.green,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "04. ৪র্থ জেনারেশন রেফারের জন্য আপনি পাবেন ১০ কয়েন।",
                  style: TextStyle(
                    color: AppColors.green,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "05. ৫ম জেনারেশন রেফারের জন্য আপনি পাবেন ৫ কয়েন।",
                  style: TextStyle(
                    color: AppColors.green,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "06. ৬ষ্ঠ জেনারেশন রেফারের জন্য আপনি পাবেন ৫ কয়েন।",
                  style: TextStyle(
                    color: AppColors.green,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "07. ৭ম জেনারেশন রেফারের জন্য আপনি পাবেন ৫ কয়েন।",
                  style: TextStyle(
                    color: AppColors.green,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

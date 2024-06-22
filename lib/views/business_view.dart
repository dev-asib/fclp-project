import 'package:fclp_app/utils/color_palette.dart';
import 'package:fclp_app/widgets/business_widgets/business_account_form.dart';
import 'package:fclp_app/widgets/global_widgets/custom_app_bar.dart';
import 'package:fclp_app/widgets/global_widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class BusinessView extends StatefulWidget {
  const BusinessView({super.key});

  @override
  State<BusinessView> createState() => _BusinessViewState();
}

class _BusinessViewState extends State<BusinessView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: CustomDrawer(
        fromBusinessView: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 70,
                  width: double.maxFinite,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: AppColors.green, width: 3)),
                  child: FittedBox(
                    child: Column(
                      children: [
                        Text(
                          "বিজনেস একাউন্ট",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Text(
                          "আজই মাত্র ৫০০ টাকায় আজীবন মেয়াদী একাউন্ট চালু করুন।",
                          style: Theme.of(context).textTheme.bodySmall,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  height: 100,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: AppColors.red,
                      width: 3
                    )
                  ),
                  child: Center(
                      child: FittedBox(
                    child: Column(
                      children: [
                        Text(
                          "একাউন্ট খুলতে পেমেন্ট করুন।",
                          style: TextStyle(
                              color: AppColors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                        Text(
                          "বিকাশ নাম্বার: ০১৭৭৭৭৭৭৭৭৭",
                          style: TextStyle(
                              color: AppColors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Text(
                          "নগদ নাম্বার: ০১৭৭৭৭৭৭৭৭৭",
                          style: TextStyle(
                              color: AppColors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  )),
                ),
                SizedBox(
                  height: 30,
                ),
                BusinessAccountLoginFormSection(),
                SizedBox(
                  height: 24,
                ),
                Text(
                  "বিঃদ্রঃ প্রতিদিন ইনকাম পয়েন্টের সুযোগ রয়েছে।",
                  style: Theme.of(context).textTheme.bodySmall,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:fclp_app/utils/color_palette.dart';
import 'package:fclp_app/widgets/login_widgets/account_login_form_section_widget.dart';
import 'package:fclp_app/widgets/global_widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:customAppBar(),
        drawer: _loginViewDrawer(context),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              Text(
                "লগইন ফর্ম",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "আমাদের সাথেই থাকুন...",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(
                height: 50,
              ),
              AccountLoginFormSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _loginViewDrawer(BuildContext context) {
    return Center(
        child: Container(
          height: 200,
          width: 300,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("নোটিশ", style: TextStyle(
                  color: AppColors.red,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(height: 8,),
                Text("অ্যাপে লগিন না করলে আপনি অ্যাপ ড্র্যারের এক্সেস পাবেন না।",
                style: Theme.of(context).textTheme.bodySmall,
                ),
                SizedBox(height: 24,),
                ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("ওকে"),),
              ],
            ),
          ),
        ),
      );
  }

}


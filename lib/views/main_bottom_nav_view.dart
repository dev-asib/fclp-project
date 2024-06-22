import 'package:fclp_app/utils/color_palette.dart';
import 'package:fclp_app/views/business_view.dart';
import 'package:fclp_app/views/home_view.dart';
import 'package:fclp_app/views/my_cart_view.dart';
import 'package:fclp_app/views/wishlist_view.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MainBottomNavView extends StatefulWidget {


  @override
  _MainBottomNavViewState createState() => _MainBottomNavViewState();
}

class _MainBottomNavViewState extends State<MainBottomNavView> {


  int _selectedIndex = 0;

  static List<Widget> _screen = <Widget>[
    HomeView(),
    MyCartView(),
    WishlistView()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _screen[_selectedIndex],
        bottomNavigationBar: GNav(
          padding: EdgeInsets.all(5),
          backgroundColor: Colors.deepPurple.shade50,
          selectedIndex: _selectedIndex,
          onTabChange: _onItemTapped,
          hoverColor: AppColors.grey,
          rippleColor: AppColors.green,
          textSize: 20,
          iconSize: 30,
          activeColor: AppColors.white,
          tabBackgroundColor: AppColors.green,
          tabMargin: EdgeInsets.all(16),
          color: AppColors.green,
          tabs: [
            GButton(
              icon: Icons.home,
              text: "হোম",
            ),
            GButton(
              icon: Icons.shopping_cart,
              text: "শপিং কার্ট",
            ),
            GButton(
              icon: Icons.favorite,
              text: "উইস লিস্ট",
            ),
          ],
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    if (mounted) {
      setState(() {
        _selectedIndex = index;
      });
    }
  }
}

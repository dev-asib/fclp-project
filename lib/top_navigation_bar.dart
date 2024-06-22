import 'package:flutter/material.dart';

class TopNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      color: Colors.green,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.menu, color: Colors.white),
         Icon(Icons.shop_2_outlined, color: Colors.white),
          Icon(Icons.notifications, color: Colors.white),
        ],
      ),
    );
  }
}

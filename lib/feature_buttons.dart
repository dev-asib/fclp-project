import 'package:flutter/material.dart';

class FeatureButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FeatureButton(icon: Icons.shopping_cart, label: 'Shop'),
          FeatureButton(icon: Icons.local_offer, label: 'Offers'),
          FeatureButton(icon: Icons.wallet_giftcard, label: 'Gifts'),
          FeatureButton(icon: Icons.account_balance_wallet, label: 'Wallet'),
          FeatureButton(icon: Icons.more_horiz, label: 'More'),
        ],
      ),
    );
  }
}

class FeatureButton extends StatelessWidget {
  final IconData icon;
  final String label;

  FeatureButton({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 30.0, color: Colors.blue),
        SizedBox(height: 5.0),
        Text(label, style: TextStyle(color: Colors.black)),
      ],
    );
  }
}

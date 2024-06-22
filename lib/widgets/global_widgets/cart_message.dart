import 'package:flutter/material.dart';

class SnackBarMessage extends StatelessWidget {
  final String message;

  const SnackBarMessage({
    Key? key,
    required this.message,
    required BuildContext context,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(message);
  }
}

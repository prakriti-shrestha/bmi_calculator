import 'package:flutter/material.dart';
import 'constants.dart';

class ReuseableCardColumn extends StatelessWidget {
  const ReuseableCardColumn({required this.iconName, required this.cardTitle});

  final IconData iconName;
  final String cardTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconName, size: 80.0),
        SizedBox(height: 15.0),
        Text(cardTitle, style: kLabelTextStyle),
      ],
    );
  }
}

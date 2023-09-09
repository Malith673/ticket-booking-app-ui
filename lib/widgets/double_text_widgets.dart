import 'package:flutter/material.dart';
import 'package:ticket_booking_ui/utils/app_styles.dart';

class DoubleTextWidgets extends StatelessWidget {
  final String bigText;
  final String smallText;
  const DoubleTextWidgets({
    super.key,
    required this.bigText,
    required this.smallText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            bigText,
            style: Styles.headlineStyle2,
          ),
          Text(
            smallText,
            style: Styles.textStyle.copyWith(
              color: Styles.primayColor,
            ),
          ),
        ],
      ),
    );
  }
}

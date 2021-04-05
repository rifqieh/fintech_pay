import 'package:fintech_pay/theme.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 30,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: defaultMargin,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My Featured Card',
            style: whiteTextStyle.copyWith(
              fontSize: 24,
              fontWeight: medium,
            ),
          ),
          Text(
            'Available 12 items',
            style: whiteTextStyle.copyWith(
              fontSize: 16,
              fontWeight: light,
            ),
          ),
        ],
      ),
    );
  }
}

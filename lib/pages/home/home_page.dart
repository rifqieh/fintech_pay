import 'package:fintech_pay/pages/home/components/header.dart';
import 'package:fintech_pay/pages/home/components/latest_transactions.dart';
import 'package:fintech_pay/theme.dart';
import 'package:flutter/material.dart';

import 'components/bank_cards.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8FBFB),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 280,
            decoration: BoxDecoration(
              color: greenColor,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(50),
              ),
            ),
          ),
          ListView(
            children: [
              Header(),
              BankCards(),
              LatestTransactions(),
            ],
          ),
        ],
      ),
    );
  }
}

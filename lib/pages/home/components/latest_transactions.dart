import 'package:fintech_pay/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';

class LatestTransactions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget transactionItem({
      String iconUrl,
      String title,
      String time,
      double price,
    }) {
      return Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.only(
          bottom: 16,
        ),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Image.asset(
            iconUrl,
          ),
          title: Text(
            title,
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
          subtitle: Text(
            time,
            style: greyTextStyle.copyWith(
              fontSize: 12,
            ),
          ),
          trailing: Text(
            (price > 0 ? '+ ' : '- ') +
                FlutterMoneyFormatter(
                  amount: price.abs(),
                  settings: MoneyFormatterSettings(
                      thousandSeparator: ',',
                      decimalSeparator: '.',
                      fractionDigits: 2),
                ).output.symbolOnLeft.toString(),
            style: price > 0
                ? blackTextStyle.copyWith(
                    fontSize: 16,
                  )
                : redTextStyle.copyWith(
                    fontSize: 16,
                  ),
          ),
        ),
      );
    }

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
            'Latest Transactions',
            style: blackTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          transactionItem(
            iconUrl: 'assets/icon_transaction1.png',
            title: 'Cakwe Medan',
            time: 'Today, 10 AM',
            price: -920.00,
          ),
          transactionItem(
            iconUrl: 'assets/icon_transaction2.png',
            title: 'Topup',
            time: 'Yesterday, 4 PM',
            price: 21920.00,
          ),
          transactionItem(
            iconUrl: 'assets/icon_transaction3.png',
            title: 'Baggage Service',
            time: '22 Jan, 2020',
            price: -5920.00,
          ),
          transactionItem(
            iconUrl: 'assets/icon_transaction4.png',
            title: 'Entertainment',
            time: '1 Dec, 2019',
            price: -1920.00,
          ),
          transactionItem(
            iconUrl: 'assets/icon_transaction3.png',
            title: 'Baggage Service',
            time: '22 Jan, 2020',
            price: -5920.00,
          ),
        ],
      ),
    );
  }
}

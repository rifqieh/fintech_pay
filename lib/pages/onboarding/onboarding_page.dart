import 'package:fintech_pay/theme.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Positioned(
              bottom: -20,
              left: -60,
              child: Image.asset(
                'assets/image_hand.png',
                width: 250,
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // SizedBox(
                  //   height: 80,
                  // ),
                  Image.asset(
                    'assets/image_onboarding.png',
                    width: 355,
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Text(
                    'Better Way For You',
                    style: whiteTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: medium,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'What can we say if there is a app\nthat you can transfer money without\ngetting any fee? Promisely',
                    style: whiteTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 48,
                            vertical: 14,
                          ),
                          decoration: BoxDecoration(
                            color: yellowColor,
                            borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(20),
                            ),
                          ),
                          child: Text(
                            'OK, BRING ME IN',
                            style: blackTextStyle.copyWith(
                              fontSize: 18,
                              fontWeight: medium,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

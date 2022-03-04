import 'package:flutter/material.dart';
import 'package:personal_portfolio/Pages/HomePage/intro_text.dart';
import 'package:personal_portfolio/responsive.dart';

class IntroDesktop extends StatelessWidget {
  const IntroDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Responsive.isMobileOs(context)
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const IntroText(),
                Image.asset('images/Portfolio_Zach.png',
                    width: Responsive.isMobileOs(context) ? 320 : 500, height: 400),
                const SizedBox(height: 50)
              ],
            )
          : Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Responsive.isSuperBigDesktop(context) ? 250 : 80),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const IntroText(),
                  Image.asset('images/Portfolio_Zach.png',
                      width: Responsive.isBigDesktop(context) ? 800 : 600,
                      height: Responsive.isBigDesktop(context) ? 800 : 600)
                ],
              ),
            ),
    );
  }
}

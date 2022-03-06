import 'package:flutter/material.dart';
import 'package:personal_portfolio/constants.dart';
import 'package:personal_portfolio/responsive.dart';

class HeadingWithUnderline extends StatelessWidget {
  HeadingWithUnderline({Key? key, required this.text}) : super(key: key);

  String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Constants.getText(
            text: text,
            weight: FontWeight.w900,
            fontsize: Responsive.isBigDesktop(context) ? 60 : 35,
            alignment: TextAlign.left),
        const SizedBox(
          height: 5,
        ),
        Container(
          width: 100,
          height: 10,
          color: const Color(0xFF3778F6),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}

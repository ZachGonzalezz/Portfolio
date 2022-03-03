import 'package:flutter/material.dart';
import 'package:personal_portfolio/constants.dart';
import 'package:personal_portfolio/responsive.dart';

class SkillBar extends StatelessWidget {
  SkillBar({ Key? key, required this.title, required this.percent}) : super(key: key);
  String title;
  double percent;

  @override
  Widget build(BuildContext context) {
      int width = Responsive.isMobile(context) ? 300 : 400;
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SizedBox(
        width: 500,
        height: 100,
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Constants.getText(text: title, fontsize: 30, weight: FontWeight.w700, alignment: TextAlign.left),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: width.toDouble(),
              child: Row(
       
                children: [
                  Container(
                    height: 20,
                    width: width * percent,
                    color: Colors.blue
                  ),
                  Container(
                    height: 20,
                    width: width - (width * percent),
                    color: Colors.white
                  )
                ],
              ),
            )
          ],
          
        ),
      ),
    );
  }
}
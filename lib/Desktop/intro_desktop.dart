import 'package:flutter/material.dart';
import 'package:personal_portfolio/Widgets/intro_text.dart';

class IntroDesktop extends StatelessWidget {
  const IntroDesktop({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 200),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const IntroText(),
          Image.asset('images/Portfolio_Zach.png', width: 600, height: 600)
          
        ],
        
      ),
    );
  }
}
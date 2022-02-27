import 'package:flutter/material.dart';
import 'package:personal_portfolio/Widgets/heading_with_underline.dart';
import 'package:personal_portfolio/constants.dart';

class AboutMeDesktop extends StatelessWidget {
  const AboutMeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100),
      child: SizedBox(
        height: 600,
        width: 600,
        child: Stack(
          children: [
            Positioned.fill(
                child: Image.asset(
              'images/CurveLine2.png',
              width: MediaQuery.of(context).size.width,
            )),
            Positioned.fill(
                child: SizedBox(
              width: 500,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    'images/Portfolio_Zach.png',
                    width: 600,
                    height: 600,
                  ),
                  SizedBox(
                    height: 200,
                    width: 200,
                    child: Column(
                      children: [
                        HeadingWithUnderline(text: 'About Me'),
                        Constants.getText(
                            text:
                                'I am a young developer  aspiring to build innovative apps and software to find solutions to modern-day problems and to better improve the lives of those around me.')
                      ],
                    ),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:personal_portfolio/Widgets/heading_with_underline.dart';
import 'package:personal_portfolio/constants.dart';
import 'package:personal_portfolio/responsive.dart';

class AboutMeDesktop extends StatelessWidget {
  const AboutMeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: Responsive.isMobileOs(context) ? 10 : 100),
      child: SizedBox(
        height: Responsive.isMobileOs(context) ? 650 : 600,
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
                child: Responsive.isMobileOs(context)
                    ? Column(
                        children: [
                          Image.asset(
                            'images/IMG_7410.png',
                            width: 800,
                            height: Responsive.isMobileOs(context) ? 175 : 800,
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          SizedBox(
                            height: 400,
                            width: 300,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                HeadingWithUnderline(text: 'About Me'),
                                Constants.getText(
                                    text:
                                        'I am a young developer aspiring to build innovative apps and software to find solutions to modern-day problems and to better improve the lives of those around me.',
                                    fontsize: 25)
                              ],
                            ),
                          ),
                        ],
                      )
                    : Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            'images/IMG_7410.png',
                            width: 800,
                            height: 800,
                          ),
                          SizedBox(
                            height: 400,
                            width: 400,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                HeadingWithUnderline(text: 'About Me'),
                                Constants.getText(
                                    text:
                                        'I am a young developer aspiring to build innovative apps and software to find solutions to modern-day problems and to better improve the lives of those around me.',
                                    fontsize: Responsive.isBigDesktop(context)
                                        ? 31
                                        : 25)
                              ],
                            ),
                          ),
                        ],
                      ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

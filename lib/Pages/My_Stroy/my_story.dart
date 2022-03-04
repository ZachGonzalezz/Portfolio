import 'package:flutter/material.dart';
import 'package:personal_portfolio/Widgets/heading_with_underline.dart';
import 'package:personal_portfolio/constants.dart';
import 'package:personal_portfolio/responsive.dart';

class MyStoryDesktop extends StatelessWidget {
  const MyStoryDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: Responsive.isMobile(context) ? 0 : 100),
      child: SizedBox(
        height: Responsive.isMobile(context) ? 1400 : 600,
        width: 300,
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
                  ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            'images/IMG_3056 1.png',
                            width: 600,
                            height: 600,
                          ),
                          SizedBox(
                            height: 800,
                            width: 500,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                HeadingWithUnderline(text: 'My Story'),
                                Constants.getText(
                                    text:
                                        'I starting coding in early middle school and instantly fell in love with technology. The pace of innovation is often compared to magic, which few understand yet we all depend on it everyday. I hope to make a meaningful difference in the world of technology and the lives of everyone.',
                                    fontsize: 30),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            'images/IMG_3056 1.png',
                            width: 600,
                            height: 600,
                          ),
                          SizedBox(
                            height: 600,
                            width:
                                Responsive.isSuperBigDesktop(context) ? 900 : 500,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                HeadingWithUnderline(text: 'My Story'),
                                Constants.getText(
                                    text:
                                        'I starting coding in early middle school and instantly fell in love with technology. The pace of innovation is often compared to magic, which few understand yet we all depend on it everyday. I hope to make a meaningful difference in the world of technology and the lives of everyone.',
                                    fontsize: 30)
                              ],
                            ),
                          ),
                        ],
                      ),
                  ),
            ))
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:personal_portfolio/Widgets/heading_with_underline.dart';
import 'package:personal_portfolio/constants.dart';
import 'package:personal_portfolio/responsive.dart';

class Display_Pic_and_Paragraph extends StatelessWidget {
 Display_Pic_and_Paragraph({Key? key, required this.title, required this.body, required this.curvesUrl, required this.imageUrl, this.isFlipped = false}) : super(key: key);
  String title;
  String body;
  String curvesUrl;
  String imageUrl;
  bool isFlipped;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: Responsive.isMobileOs(context) ? 10 : 100),
      child: SizedBox(
        height: Responsive.isMobileOs(context) ? 700 : 600,
        child: Stack(
          children: [
            Positioned.fill(
                child: Padding(
                  padding: Responsive.isMobileOs(context) ? EdgeInsets.only(bottom: 300) : EdgeInsets.zero,
                  child: Image.asset( curvesUrl
              ,
              width: MediaQuery.of(context).size.width,
            ),
                )),
            Positioned.fill(
              child: SizedBox(
                width: 500,
                child: Responsive.isMobileOs(context)
                    ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                HeadingWithUnderline(text: title),
                                Constants.getText(
                                    text:
                                        body,
                                    fontsize: 19)
                              ],
                            ),
                            const SizedBox(
                              height: 0,
                            ),
                            Image.asset(
                              imageUrl,
                              width: Responsive.isMobileOs(context) ? 375 : 800,
                              height: Responsive.isMobileOs(context) ? 375 : 800,
                            ),
                          ],
                        ),
                    )
                    : Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: isFlipped ? [
                          
                          SizedBox(
                            height: 400,
                            width: 400,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                HeadingWithUnderline(text: title),
                                Constants.getText(
                                    text:
                                       body,
                                    fontsize: Responsive.isBigDesktop(context)
                                        ? 31
                                        : 25)
                              ],
                            ),
                          ),
                          Image.asset(
                            imageUrl,
                            width: 800,
                            height: 800,
                          ),

                        ] :[
                          Image.asset(
                            imageUrl,
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
                                HeadingWithUnderline(text: title),
                                Constants.getText(
                                    text:
                                       body,
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

import 'package:flutter/material.dart';
import 'package:personal_portfolio/constants.dart';
import 'package:personal_portfolio/responsive.dart';

class ShowcaseProjectTile extends StatelessWidget {
  ShowcaseProjectTile(
      {Key? key,
      required this.image,
      required this.text,
      this.isFilled = false,
      this.isFlipped = false})
      : super(key: key);
  String image;
  String text;
  bool isFilled;
  bool isFlipped;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Responsive.isMobileOs(context)
          ? const EdgeInsets.all(30)
          : const EdgeInsets.fromLTRB(200, 50, 200, 50),
      child: Container(
        decoration: BoxDecoration(
            color: isFilled ? const Color(0xFF1D1B34) : null,
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: EdgeInsets.all(Responsive.isMobileOs(context) ? 10 : 20.0),
          child: Responsive.isMobileOs(context)
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                      Center(child: Image.asset(image, width: 450, height: 300)),
                      SizedBox(
                        height: Responsive.isMobileOs(context) ? 540 : 350,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Responsive.isMobileOs(context) ? const SizedBox() : Container(
                              height:
                                  Responsive.isMobileOs(context) ? 280 : 500,
                              width: 10,
                              color: const Color(0xFF3778F6),
                            ),
                            Responsive.isMobileOs(context) ? const SizedBox() : const SizedBox(
                              width: 20,
                            ),
                            SizedBox(
                                width: Responsive.isMobileOs(context) ? 250 : 350,
                                child: Constants.getText(
                                  text: text,
                                  fontsize: 25,
                                ))
                          ],
                        ),
                      ),
                    
                    ])
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: isFlipped
                      ? [
                          SizedBox(
                            height: 350,
                            child: Row(
                              children: [
                                Container(
                                  height: 500,
                                  width: 10,
                                  color: const Color(0xFF3778F6),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                SizedBox(
                                    width: Responsive.isBigDesktop(context)
                                        ? 490
                                        : 330,
                                    child: Constants.getText(
                                      text: text,
                                      fontsize: Responsive.isBigDesktop(context)
                                          ? 30
                                          : 25,
                                    ))
                              ],
                            ),
                          ),
                          Image.asset(image, width: 450, height: 450),
                        ]
                      : [
                          Image.asset(image, width: 450, height: 450),
                          SizedBox(
                            height: 350,
                            child: Row(
                              children: [
                                Container(
                                  height: 500,
                                  width: 10,
                                  color: const Color(0xFF3778F6),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                SizedBox(
                                    width: Responsive.isBigDesktop(context)
                                        ? 490
                                        : 330,
                                    child: Constants.getText(
                                      text: text,
                                      fontsize: Responsive.isBigDesktop(context)
                                          ? 30
                                          : 25,
                                    ))
                              ],
                            ),
                          )
                        ],
                ),
        ),
      ),
    );
  }
}

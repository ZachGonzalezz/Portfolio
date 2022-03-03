import 'package:flutter/material.dart';
import 'package:personal_portfolio/Widgets/skill_bar.dart';
import 'package:personal_portfolio/constants.dart';
import 'package:personal_portfolio/responsive.dart';

class SkillShowcase extends StatelessWidget {
  SkillShowcase(
      {Key? key,
      required this.paragraph,
      required this.title,
      required this.subtitle,
      required this.skillLevels,
      required this.height})
      : super(key: key);
  String title;
  String subtitle;
  String paragraph;
  double height;
  Map<String, double> skillLevels;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0),
      child: SizedBox(
        height:
            Responsive.isMobileOs(context) ? height * 1.35 + 200 : height + 200,
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Constants.getText(
                      text: title,
                      fontsize: Responsive.isBigDesktop(context) ? 60 : 40,
                      weight: FontWeight.w800),
                  const SizedBox(
                    height: 10,
                  ),
                  Responsive.isMobileOs(context)
                      ? Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              child: Container(
                                width: 600,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF1D1B34),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(40.0),
                                  child: Column(
                                    children: [
                                      Constants.getText(
                                          text: subtitle,
                                          fontsize: 30,
                                          weight: FontWeight.w800),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Constants.getText(
                                          text: paragraph, fontsize: 20),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height,
                              width: Responsive.isMobileOs(context) ? 300 : 400,
                              child: Column(
                                children: skillLevels.entries.map((e) {
                                  return SkillBar(
                                      title: e.key, percent: e.value);
                                }).toList(),
                              ),
                            ),
                          ],
                        )
                      : Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width:
                                  Responsive.isBigDesktop(context) ? 900 : 600,
                              decoration: BoxDecoration(
                                color: const Color(0xFF1D1B34),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(40.0),
                                child: Column(
                                  children: [
                                    Constants.getText(
                                        text: subtitle,
                                        fontsize:
                                            Responsive.isBigDesktop(context)
                                                ? 50
                                                : 30,
                                        weight: FontWeight.w800),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Constants.getText(
                                        text: paragraph,
                                        fontsize:
                                            Responsive.isBigDesktop(context)
                                                ? 30
                                                : 20),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height,
                              width:
                                  Responsive.isBigDesktop(context) ? 600 : 400,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: skillLevels.entries.map((e) {
                                  return SkillBar(
                                      title: e.key, percent: e.value);
                                }).toList(),
                              ),
                            ),
                          ],
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

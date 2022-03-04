import 'package:flutter/material.dart';
import 'package:personal_portfolio/Pages/ShowProjectPage/show_project_screen.dart';
import 'package:personal_portfolio/constants.dart';
import 'package:personal_portfolio/responsive.dart';

class ProjectShow extends StatelessWidget {
  ProjectShow(
      {Key? key,
      required this.imageUrl,
      required this.text,
      required this.projectName})
      : super(key: key);
  String imageUrl;
  String text;
  String projectName;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: Responsive.isMobileOs(context) ? const EdgeInsets.all(30)  : const EdgeInsets.fromLTRB(270, 50, 270, 50),
        child: Container(
            decoration: BoxDecoration(
                color: const Color(0xFF1D1B34),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Padding(
                  padding: Responsive.isMobileOs(context) ? EdgeInsets.symmetric(horizontal: 20): EdgeInsets.zero,
                  child: Image.asset(
                    imageUrl,
                    height: 300,
                    width: 300,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Container(
                    height: 3,
                    color: const Color(0xFF3E3A45),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Constants.getText(text: text, fontsize: Responsive.isBigDesktop(context)
                                        ? 31
                                        : 25, alignment: TextAlign.center),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ShowProjectScreen(nameOfProject: projectName)));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xFF3778F6)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: Constants.getText(
                              text: 'Learn More',
                              fontsize: 30,
                              weight: FontWeight.w700),
                      ),
                    )),

                  const SizedBox(
                  height: 30,
                ),
              ],
            )),
      ),
    );
  }
}

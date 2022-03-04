import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_portfolio/constants.dart';
import 'package:personal_portfolio/responsive.dart';

class IntroText extends StatelessWidget {
  const IntroText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Constants.getText(
              text: 'Hello, my name is',
              fontsize: Responsive.isBigDesktop(context) ? 60 : 30),
          Constants.getText(
              text: 'Zachary Gonzalez',
              height: Responsive.isMobile(context) ? 1.1 : 1.5,
              fontsize: Responsive.isBigDesktop(context) ? 90 : 60,
              weight: FontWeight.w900),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              color: const Color(0xFF2B5AB8),
              height: 10,
              width: 100,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          RichText(
            textAlign: Responsive.isMobile(context) ? TextAlign.center : TextAlign.left,
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                    text: 'Software Developer',
                    style: GoogleFonts.manrope(
                      
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF2B5AB8),
                        fontSize: Responsive.isBigDesktop(context) ? 50 : Responsive.isMobileOs(context) ? 25 :  30)),
                TextSpan(
                    text: ' and Entreprenuer',
                    style: GoogleFonts.manrope(
                        color: Colors.white,
                        fontSize: Responsive.isBigDesktop(context) ? 50 : Responsive.isMobileOs(context) ? 25 :  30)),
              ],
            ),
          ),
          Constants.getText(
              text: 'based in the Vegas area',
              alignment: Responsive.isMobile(context) ? TextAlign.center : TextAlign.left,
              fontsize: Responsive.isBigDesktop(context) ? 50 : Responsive.isMobileOs(context) ? 25 :  30),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 20,
          ),
          
          Responsive.isMobileOs(context) ? 
          Center(
            child: Padding(
              padding:
                  EdgeInsets.only(left: Responsive.isMobileOs(context) ? 0 : 100),
              child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/contact');
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xFF3778F6),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 12, 20, 12),
                        child: Constants.getText(
                            text: 'Contact',
                            weight: FontWeight.w800,
                            fontsize: Responsive.isBigDesktop(context) ? 70 : 40),
                      ))),
            ),
          )
          
          : Padding(
            padding:
                EdgeInsets.only(left: Responsive.isMobileOs(context) ? 0 : 100),
            child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/contact');
                },
                child: Container(
                    decoration: BoxDecoration(
                        color: const Color(0xFF3778F6),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 12, 20, 12),
                      child: Constants.getText(
                          text: 'Contact',
                          weight: FontWeight.w800,
                          fontsize: Responsive.isBigDesktop(context) ? 70 : 40),
                    ))),
          )
        ],
      ),
    );
  }
}

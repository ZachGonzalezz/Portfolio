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
          Constants.getText(text: 'Hello, my name is', fontsize: 30),
          Constants.getText(
              text: 'Zachary Gonzalez', fontsize: 60, weight: FontWeight.w700),
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
            textAlign: TextAlign.left,
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                    text: 'Software Developer',
                    style: GoogleFonts.manrope(
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF2B5AB8),
                        fontSize: 30)),
                TextSpan(
                    text: ' and Entreprenuer',
                    style:
                        GoogleFonts.manrope(color: Colors.white, fontSize: 30)),
              ],
            ),
          ),
          Constants.getText(
              text: 'based in the Vegas area',
              alignment: TextAlign.left,
              fontsize: 30),
              const SizedBox(height: 20,),
             const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: Responsive.isMobileOs(context) ? 0 : 100),
            child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/contact');
                },
                child: Container(
                    decoration: BoxDecoration(
                        color: const Color(0xFF3778F6),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Constants.getText(
                          text: 'Contact', weight: FontWeight.w800, fontsize: 40),
                    ))),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:personal_portfolio/constants.dart';

class FooterDesktop extends StatelessWidget {
  const FooterDesktop({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: const Color(0xFF0B0629),
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
        child: SizedBox(
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Constants.getText(text: '© Zachary Gonzalez 2022', color: const Color(0xFF909090), fontsize: 20),
              SizedBox(
                width: 600,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  Constants.getText(text: 'Download My Resume', color: const Color(0xFF909090), isUnderline: true, fontsize: 20),
                  Constants.getText(text: 'Source Code', color: const Color(0xFF909090), isUnderline: true, fontsize: 20),
                  Constants.getText(text: 'Apple App', color: const Color(0xFF909090), isUnderline: true, fontsize: 20),
                  Constants.getText(text: 'Android App', color: const Color(0xFF909090), isUnderline: true, fontsize: 20),
                ]),
              ),
              TextButton(onPressed: (){}, child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF35348E),
                  borderRadius: BorderRadius.circular(10)
                ),
                child:  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Constants.getText(text: 'Contact', fontsize: 20),
                ),
              )),
              Constants.getText(text: 'Designed in Figma & Built in Flutter', color: const Color(0xFF909090), fontsize: 20),
              Constants.getText(text: 'Last Updated 2.21.22', color: const Color(0xFF909090), fontsize: 20),
            ],
          ),
        ),
      )
    );
  }
}
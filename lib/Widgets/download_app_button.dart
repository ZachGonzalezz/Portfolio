import 'package:flutter/material.dart';
import 'package:personal_portfolio/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class DownloadAppButton extends StatelessWidget {
  DownloadAppButton({ Key? key, required this.url, required this.buttonText}) : super(key: key);
  String url;
  String buttonText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Center(
        child: TextButton(
          onPressed: (){
            launch(url);
          },

          child: Container(
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(10),
           color: const Color(0xff3778F6)
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Constants.getText(text: buttonText, fontsize: 30, weight: FontWeight.w900),
            ),
          ),
          
        ),
      ),
    );
  }
}
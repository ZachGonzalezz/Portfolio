import 'package:flutter/material.dart';
import 'package:personal_portfolio/responsive.dart';
import 'package:universal_html/html.dart' as html;
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class TopBarButton extends StatelessWidget {
  TopBarButton(
      {Key? key,
      required this.imageUrl,
      required this.url,
      this.isMail = false, this.isPhone = false})
      : super(key: key);

  String imageUrl;
  String url;
  bool isMail;
  bool isPhone;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
        child: Image.asset(
          imageUrl,
          width: 30,
          height: 30,
        ),
        onTap: () {
          if (isMail) {
            launch(
                'mailto:zacharygonzalez1234@gmail.comsubject=News&body=New%20plugin');
         
          }
          else if(isPhone){
             launch('sms:7025537534');
          }
           else {
            //if on mobile open url launched
            if (Responsive.isMobileOs(context)) {
              launch(url);
            }
            //else open new tab
            else {
              html.window.open(url, "_blank");
            }
          }
        },
      ),
    );
  }
}

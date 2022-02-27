import 'package:flutter/material.dart';
import 'package:personal_portfolio/constants.dart';

// ignore: must_be_immutable
class TopBarTextButton extends StatelessWidget {
 // ignore: use_key_in_widget_constructors
 TopBarTextButton({required this.title, required this.url});

  String title;
  String url;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextButton(

        child: Constants.getText(text: title, fontsize: 22, weight: FontWeight.w800),
        onPressed: (){
          //go to that page
        
          Navigator.pushNamed(context, url);
        }
        
      ),
    );
  }
}
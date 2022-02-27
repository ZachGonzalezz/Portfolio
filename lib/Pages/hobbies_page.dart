import 'package:flutter/material.dart';
import 'package:personal_portfolio/Desktop/footer_desktop.dart';
import 'package:personal_portfolio/Desktop/hobbies.dart';
import 'package:personal_portfolio/Desktop/nav_bar_top_desk.dart';

class HobbiesPage extends StatelessWidget {
  const HobbiesPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        children: [
          TopBarDesktop(),
          Hobbies(),
          FooterDesktop()
        ]
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:personal_portfolio/Desktop/footer_desktop.dart';
import 'package:personal_portfolio/Desktop/nav_bar_top_desk.dart';
import 'package:personal_portfolio/Pages/Awards/awards_showcase.dart';
import 'package:personal_portfolio/Widgets/drawer.dart';

class AwardShowScreen extends StatelessWidget {
  AwardShowScreen(
      {Key? key, required this.title, required this.text, required this.images})
      : super(key: key);
  String title;
  String text;
  List<String> images;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         drawer: const DrawerMenu(),
      body: ListView(
        children: [
          const TopBarDesktop(),
          AwardShowcase(title: title, text: text, images: images),
          
         
          const FooterDesktop()
        ]
      ),
    );
  }
}
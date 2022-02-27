import 'package:flutter/material.dart';
import 'package:personal_portfolio/Desktop/aboutme_desktop.dart';
import 'package:personal_portfolio/Desktop/footer_desktop.dart';
import 'package:personal_portfolio/Desktop/intro_desktop.dart';
import 'package:personal_portfolio/Desktop/nav_bar_top_desk.dart';
import 'package:personal_portfolio/Desktop/projects_desktop.dart';
import 'package:personal_portfolio/Widgets/skill_showcase.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ListView(
        children: [
          const TopBarDesktop(),
          const IntroDesktop(),
          const AboutMeDesktop(),
          SkillShowcase(
            title: 'Language',
            subtitle: 'Front End Development',
            paragraph:
                'Self-taught in several programming languages including Flutter, Swift, and Python.',
            skillLevels: const {
              'Flutter / Dart' : 0.8,
              'Apple Swift' : 0.6,
              'Python' : 0.5
            },
            height: 400,
          ),
          SkillShowcase(
            title: 'Software',
            subtitle: 'Programming Software',
            paragraph:
                'Knowledge in a variety of programming environments such as VSCode, XCode, and Android Studio, as well as experience with Google Cloud Platform.',
            skillLevels: const {
              'Vscode' : 0.8,
              'Xcode' : 0.6,
              'Android Studio' : 0.5,
              'Google Cloud Platform' : 0.3
            },
            height: 600,
          ),
          const ProjectsDesktop(),
          const FooterDesktop(),
          
        ],
      ),
    ));
  }
}
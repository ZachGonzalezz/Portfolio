import 'package:flutter/material.dart';
import 'package:personal_portfolio/Desktop/footer_desktop.dart';
import 'package:personal_portfolio/Desktop/nav_bar_top_desk.dart';
import 'package:personal_portfolio/Pages/HomePage/aboutme_desktop.dart';
import 'package:personal_portfolio/Pages/HomePage/intro_desktop.dart';
import 'package:personal_portfolio/Pages/HomePage/projects_desktop.dart';
import 'package:personal_portfolio/Widgets/drawer.dart';
import 'package:personal_portfolio/Widgets/skill_showcase.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerMenu(),
        body: Center(
      child: ListView(
        children: [
          const TopBarDesktop(),
          const IntroDesktop(),
          const AboutMeDesktop(),
          SkillShowcase(
            title: 'Languages',
            subtitle: 'Mobile Development',
            paragraph:
                'My go to framework for mobile development is Flutter / Dart. However I am also proffient and certified in Apple\'s Swift. Python is my go to for any automation or non mobile specific code.',
            skillLevels: const {
              'Flutter / Dart' : .95,
              'Apple Swift' : 0.8,
              'Python' : 0.6
            },
            height: 400,
          ),
          SkillShowcase(
            title: 'Software',
            subtitle: 'Programming Software',
            paragraph:
                'I am familiar with the Vistual Studio Code, Android Studio, and Xcode Integrated Development Environments. I am proficent is a number of Google Cloud Services including Cloud Run, Firebase, Firestorage, Cloud Functions, App Engine, and more.',
            skillLevels: const {
              'Vscode' : 0.95,
              'Xcode' : 0.85,
              'Android Studio' : 0.75,
              'Google Cloud Platform' : 0.7
            },
            height: 500,
          ),
          const ProjectsDesktop(),
          const FooterDesktop()
          
        ],
      ),
    ));
  }
}
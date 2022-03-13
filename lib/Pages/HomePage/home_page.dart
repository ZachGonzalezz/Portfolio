import 'package:flutter/material.dart';
import 'package:personal_portfolio/Desktop/footer_desktop.dart';
import 'package:personal_portfolio/Desktop/nav_bar_top_desk.dart';
import 'package:personal_portfolio/Pages/HomePage/aboutme_desktop.dart';
import 'package:personal_portfolio/Pages/HomePage/intro_desktop.dart';
import 'package:personal_portfolio/Pages/HomePage/project_show.dart';
import 'package:personal_portfolio/Widgets/drawer.dart';
import 'package:personal_portfolio/Widgets/skill_showcase.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const DrawerMenu(),
        body: Center(
          child: ListView(
            children: [
              const TopBarDesktop(),
              const IntroDesktop(),
            Display_Pic_and_Paragraph(
              title: 'About Me',
              body: 'I am a young developer aspiring to build innovative apps and software to find solutions to modern-day problems and to better improve the lives of those around me.',
              imageUrl: 'images/IMG_7410.png',
              curvesUrl: 'images/CurveLine2.png',
            ),
              SkillShowcase(
                title: 'Languages',
                subtitle: 'Mobile Development',
                paragraph:
                    'My go to framework for mobile development is Flutter / Dart. However I am also proffient and certified in Apple\'s Swift. Python is my go to for any automation or non mobile specific code.',
                skillLevels: const {
                  'Flutter / Dart': .95,
                  'Apple Swift': 0.8,
                  'Python': 0.6
                },
                height: 400,
              ),
              SkillShowcase(
                title: 'Software',
                subtitle: 'Programming Software',
                paragraph:
                    'I am familiar with the Vistual Studio Code, Android Studio, and Xcode Integrated Development Environments. I am proficient is a number of Google Cloud Services including Cloud Run, Firebase, Firestorage, Cloud Functions, App Engine, and more.',
                skillLevels: const {
                  'Vscode': 0.95,
                  'Xcode': 0.85,
                  'Android Studio': 0.75,
                  'Google Cloud Platform': 0.7
                },
                height: 500,
              ),
              ProjectShow(
                  imageUrl: 'images/PolarisShowcase1.png',
                  text:
                      'Polaris is an app developed by myself. Focusing on making a seamless process to find mentors',
                  projectName: 'Polaris'),
                   ProjectShow(
                  imageUrl: 'images/MixPlateShowcase1.png',
                  text:
                      'Mixedplate helps tournament staff run bowling tournaments easily by automating the process.',
                  projectName: 'MixedPlate'),
            
                   ProjectShow(
                  imageUrl: 'images/AutomatedScriptShowcase2.png',
                  text:
                      'Doing repetitive tasks online can be incredibly annoying. Trying to message 1000\'s of people can be boring and time consuming. That\’s where the bots I built come in handy',
                  projectName: 'Automated Scripts'),
              const FooterDesktop()
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:personal_portfolio/Widgets/download_app_button.dart';
import 'package:personal_portfolio/Widgets/showcase_project.dart';

class MixedPlateShowcaseDesktop extends StatelessWidget {
  const MixedPlateShowcaseDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShowcaseProjectTile(
          image: 'images/MixPlateShowcase1.png',
          text: '''
You cant save the world all the time! Which is where Mixplate Bowling comes in. A small local bowling league in need of help running their bowling tournaments.

''',
          isFilled: true,
        ),
        ShowcaseProjectTile(
            image: 'images/MixPlateShowcase2.png',
            text: '''
Amazingly in 2022 they did everything by hand. I made them a website that would take the scores of the bowlers, decides bracket, sidepot, teams, doubles, and single winners. Saving them time and money!
''',
            isFilled: true, 
            isFlipped: true,),
        ShowcaseProjectTile(
            image: 'images/MixPlateShowcase3.png',
            text: '''
The real world is not a static web page. This website accounts for that. Everything from the number of games to number of divisions is customizable, allowing for a flexible real world environment.
''',
            isFilled: true),
             ShowcaseProjectTile(
            image: 'images/TechStack.png',
            isFlipped: true,
            text: '''
The website is written in Dart using the Flutter framework. The backend uses Firebase. I used Android Studio and Visual Studio Code as my IDE. The wireframing and prototyping was done in Figma. The website is hosted on Hostinger.
''',
            isFilled: true),   
            DownloadAppButton(url: 'http://mixedplate.net/#/', buttonText: 'Website'),
      ],
    );
  }
}

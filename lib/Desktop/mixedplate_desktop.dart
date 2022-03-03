import 'package:flutter/material.dart';
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
You can't save the world all the time and that's where Mixedplate Bowling comes in. A small local bowling league needed help running there bowling tournaments as there league staff got older.

''',
          isFilled: true,
        ),
        ShowcaseProjectTile(
            image: 'images/MixPlateShowcase2.png',
            text: '''
Amazingly in 2022 they did everything by hand. I made them a website that would take the scores of the bowlers and decides bracket, sidepot, teams, doubles, and single winners. Saving them hours and money from paying someone.
''',
            isFilled: true, 
            isFlipped: true,),
        ShowcaseProjectTile(
            image: 'images/MixPlateShowcase3.png',
            text: '''
The real world is not a static web page and so this website accounts for that. Everything from number of games to number of divisions is customizable and easily changible allowing for flexible in a real world enviroment.
''',
            isFilled: true),
      ],
    );
  }
}

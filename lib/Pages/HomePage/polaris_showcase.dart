import 'package:flutter/material.dart';
import 'package:personal_portfolio/Widgets/showcase_project.dart';

class PolarisShowcaseDesktop extends StatelessWidget {
  const PolarisShowcaseDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShowcaseProjectTile(
          image: 'images/PolarisShowcase1.png',
          text: '''
Polaris was founded by me and my classmate Justin Pecayo. Polaris was created when multiple of my teachers kept calling life after school the "real world". Which this seemed silly to me.
                ''',
          isFilled: true,
        ),
        ShowcaseProjectTile(
            image: 'images/PolarisShowcase2.png',
            text: '''
Polaris allows students to explore their interests through tracking your likes and dislikes on mentor generated content through the swipe left swipe right feature.
''',
            isFilled: true, 
            isFlipped: true,),
        ShowcaseProjectTile(
            image: 'images/PolarisShowcase3.png',
            text: '''
In 2022 you can buy a TV from your couch, order a pizza, but finding your next career mentor is much harder. Polaris made conencting and interacting with the mentors in your community easy.
''',
            isFilled: true),
      ],
    );
  }
}

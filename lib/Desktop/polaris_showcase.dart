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
A new way of mentoring. A platform that helps connect tech-passionate students to industry mentors.

Filling the gap between young
talent and real-world opportunities.

''',
          isFilled: true,
        ),
        ShowcaseProjectTile(
            image: 'images/PolarisShowcase2.png',
            text: '''
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin commodo augue a augue porta pulvinar. Ut finibus odio in felis rutrum placerat.
''',
            isFilled: true, 
            isFlipped: true,),
        ShowcaseProjectTile(
            image: 'images/PolarisShowcase3.png',
            text: '''
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin commodo augue a augue porta pulvinar. Ut finibus odio in felis rutrum placerat.''',
            isFilled: true),
      ],
    );
  }
}

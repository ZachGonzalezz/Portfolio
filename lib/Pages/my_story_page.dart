import 'package:flutter/material.dart';
import 'package:personal_portfolio/Desktop/footer_desktop.dart';
import 'package:personal_portfolio/Desktop/my_story.dart';
import 'package:personal_portfolio/Desktop/nav_bar_top_desk.dart';
import 'package:personal_portfolio/Widgets/showcase_project.dart';
import 'package:personal_portfolio/Widgets/skill_showcase.dart';

class MyStoryPage extends StatelessWidget {
  const MyStoryPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        children: [
          TopBarDesktop(),
          MyStoryDesktop(),
            SkillShowcase(
            title: 'Other Skills',
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
          ShowcaseProjectTile(
            image: 'images/Mask Group.png',
            text: '''
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin commodo augue a augue porta pulvinar. Ut finibus odio in felis rutrum placerat.''',
            isFilled: true),
            ShowcaseProjectTile(
            image: 'images/Mask Group-2.png',
            text: '''
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin commodo augue a augue porta pulvinar. Ut finibus odio in felis rutrum placerat.''',
            isFilled: true,
            isFlipped: true,),
            ShowcaseProjectTile(
            image: 'images/Mask Group-1.png',
            text: '''
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin commodo augue a augue porta pulvinar. Ut finibus odio in felis rutrum placerat.''',
            isFilled: true),
          FooterDesktop()
        ]
      ),
    );
  }
}
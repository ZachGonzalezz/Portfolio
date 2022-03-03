import 'package:flutter/material.dart';
import 'package:personal_portfolio/Desktop/footer_desktop.dart';
import 'package:personal_portfolio/Desktop/nav_bar_top_desk.dart';
import 'package:personal_portfolio/Pages/My_Stroy/my_story.dart';
import 'package:personal_portfolio/Widgets/drawer.dart';
import 'package:personal_portfolio/Widgets/showcase_project.dart';
import 'package:personal_portfolio/Widgets/skill_showcase.dart';

class MyStoryPage extends StatelessWidget {
  const MyStoryPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
         drawer: const DrawerMenu(),
      body: ListView(
        children: [
          const TopBarDesktop(),
         const  MyStoryDesktop(),
            SkillShowcase(
            title: 'Other Skills',
            subtitle: 'More About Me:',
            paragraph:
                'As someone who has ran their own app startup I learned to wear a few hats. I picked up video editing while making an app platform of which has video content on it. Since then I run a Youtube channel on the side to help teach and spread my knowledge. Sadly, as a logistical person Photoshop is the closest thing I will get to art, but as a geek at heart the Web3 movement is something that fascinates me. I spend a lot of time looking into Blockchains, Cryptos, NFTs, and more.',
            skillLevels: const {
              'Adobe Premire Pro' : 0.8,
              'Adobe Photoshop' : 0.6,
              'Etherium Blockchain' : 0.5
            },
            height: 600,
          ),
          ShowcaseProjectTile(
            image: 'images/Mask Group.png',
            text: '''
GuardFlow was very first app I started coding when I was 16. Before I beat around the bush, let me tell you the entire project failed and never went anywhere. Great resume material you may being saying. I know! (Multiple people told me this was a horrible idea)
''',
            isFilled: true),
            ShowcaseProjectTile(
            image: 'images/Mask Group-2.png',
            text: '''
Instead of hiding my failures I want to tell you about mine. I had this cool never before seen idea. When I was working as a lifeguard we had a horrible clock in app it always failed. My solution build a better one! No experience building apps because why not!''',
            isFilled: true,
            isFlipped: true,),
            ShowcaseProjectTile(
            image: 'images/Mask Group-1.png',
            text: '''
What went wrong? Pretty much everything is the short answer! This was before I knew what user experience was and before I met a designer.\n(if you could not tell) 
''',
            isFilled: true),
          FooterDesktop()
        ]
      ),
    );
  }
}
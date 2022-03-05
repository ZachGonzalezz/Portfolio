import 'package:flutter/material.dart';
import 'package:personal_portfolio/Widgets/download_app_button.dart';
import 'package:personal_portfolio/Widgets/showcase_project.dart';
import 'package:personal_portfolio/responsive.dart';

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
         ShowcaseProjectTile(
            image: 'images/TechStack.png',
            isFlipped: true,
            text: '''
The app and website are both written in Dart using the Flutter framework. The backend uses Firebase and Cloud Run. Notifications are handeled through listeners on Cloud Functions. I used Android Studio and Visual Studio Code as my IDE.
''',
            isFilled: true),            
        
       Responsive.isMobileOs(context) ? 
       Column(
        crossAxisAlignment: CrossAxisAlignment.center,
          children: [
DownloadAppButton(url: 'https://apps.apple.com/us/app/polaristech/id1585714413', buttonText: 'Apple'),
DownloadAppButton(url: 'https://play.google.com/store/apps/details?id=zacharygonzalez.com.mentor', buttonText: 'Android'),
DownloadAppButton(url: 'https://polaristech.tech/', buttonText: 'Website'),
          ],
        ) :
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
DownloadAppButton(url: 'https://apps.apple.com/us/app/polaristech/id1585714413', buttonText: 'Apple'),
DownloadAppButton(url: 'https://play.google.com/store/apps/details?id=zacharygonzalez.com.mentor', buttonText: 'Android'),
DownloadAppButton(url: 'https://polaristech.tech/', buttonText: 'Website'),
          ],
        ),
        
        
      ],
    );
  }
}

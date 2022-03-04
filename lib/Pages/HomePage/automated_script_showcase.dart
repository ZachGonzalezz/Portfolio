import 'package:flutter/material.dart';
import 'package:personal_portfolio/Widgets/download_app_button.dart';
import 'package:personal_portfolio/Widgets/showcase_project.dart';

class AutomatedScriptShowcase extends StatelessWidget {
  const AutomatedScriptShowcase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShowcaseProjectTile(
          image: 'images/AutomatedScriptShowcase1.png',
          text: '''
I wrote scripts for the recruiting company Talent360Avenue to automate some of there tasks. It is common for recruiters to need to look up many people I automated a google chrome browser to search and collect information putting it in a csv. 
''',
          isFilled: true,
        ),
        ShowcaseProjectTile(
            image: 'images/AutomatedScriptShowcase2.png',
            text: '''
Recruiter also often need to reach out to some 1000's of potenial canidates about new job opening. I automated sending messages by making a bot to read a spreadsheet of phone numbers and send them a tailored message to them. Saving them hours!
''',
            isFilled: true, 
            isFlipped: true,),
        ShowcaseProjectTile(
            image: 'images/AutomatedScriptShowcase3.png',
            text: '''
In the modern world people have more than just a phone number. I also automated sending messages on Twitter. I made a bot to go through every follower of a specific user and sending them a message. 
''',
            isFilled: true),
             ShowcaseProjectTile(
            image: 'images/TechStack.png',
            isFlipped: true,
            text: '''
The scripts are written in python. For the twitter texting campaign I use Twitter Developer Portal to access information. For texting campaign I use Twillio API to send message. I use the Selenium code library for browser automation.
''',
            isFilled: true),   
            DownloadAppButton(url: 'https://github.com/ZachGonzalezz/Campaign_Public/tree/master', buttonText: 'Github'),
      ],
    );
  }
}

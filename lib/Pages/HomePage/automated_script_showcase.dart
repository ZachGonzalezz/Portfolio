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
I got the opprotunity to write scripts for Talent360Avenue to automate some of their tasks. It is common for recruiters to look up countless people at a time. So I automated a Google Chrome browser to search and collect information, automatically putting it into a CSV.
''',
          isFilled: true,
        ),
        ShowcaseProjectTile(
            image: 'images/AutomatedScriptShowcase2.png',
            text: '''
Recruiters often need to reach out to 1,000’s of potential candidates about new job openings. I automated text messages by making a bot to read a spreadsheet of phone numbers, efficiently sending the message to them. Saving them so much time!
''',
            isFilled: true, 
            isFlipped: true,),
        ShowcaseProjectTile(
            image: 'images/AutomatedScriptShowcase3.png',
            text: '''
In todays modern world people have more than just a phone number. I also automated sending messages on Twitter. I made a bot go through every follower of a specific user, sending them messages.
''',
            isFilled: true),
             ShowcaseProjectTile(
            image: 'images/TechStack.png',
            isFlipped: true,
            text: '''
The scripts are written in Python. For the Twitter texting campaign I use Twitter Developer Portal to access information. For texting campaign I use Twillio API to send message. I used the Selenium code library for browser automation.
''',
            isFilled: true),   
            DownloadAppButton(url: 'https://github.com/ZachGonzalezz/Campaign_Public/tree/master', buttonText: 'Github'),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:personal_portfolio/Desktop/footer_desktop.dart';
import 'package:personal_portfolio/Desktop/nav_bar_top_desk.dart';
import 'package:personal_portfolio/Pages/Hobby/hobbies.dart';
import 'package:personal_portfolio/Pages/HomePage/aboutme_desktop.dart';
import 'package:personal_portfolio/Widgets/drawer.dart';

class HobbiesPage extends StatelessWidget {
  const HobbiesPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
         drawer: const DrawerMenu(),
      body: ListView(
        children: [
          const TopBarDesktop(),
          Hobbies(),
          Display_Pic_and_Paragraph(
              title: 'Bowling',
              body: 'I started bowling when I was just 10 years old. I instantly fell in love with the sport. This pushed me to become team captain on the High Schools Mens bowling team. Allowing me to win multiple tournaments and I even met some of my life mentors through the sport.',
              imageUrl: 'images/BowlingHobby.png',
              curvesUrl: 'images/CurveLine2.png',
            ),
          Display_Pic_and_Paragraph(
              title: 'NFTs',
              body: 'When I was younger I used to collect Pokémon Cards. As a technologist when I saw NFT\’s becoming popular I knew I had to be apart of it somehow. Currently I am working with an artist Eliza Gregory to develop NFT\’s for fun!',
              imageUrl: 'images/NftHobby.png',
              curvesUrl: 'images/CurveLine4.png',
              isFlipped: true,
            ),
          const FooterDesktop()
        ]
      ),
    );
  }
}
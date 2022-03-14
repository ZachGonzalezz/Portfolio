import 'package:flutter/material.dart';
import 'package:personal_portfolio/Desktop/footer_desktop.dart';
import 'package:personal_portfolio/Desktop/nav_bar_top_desk.dart';
import 'package:personal_portfolio/Pages/HomePage/aboutme_desktop.dart';
import 'package:personal_portfolio/Widgets/drawer.dart';
import 'package:personal_portfolio/responsive%20copy.dart';

class AwardsPage extends StatelessWidget {
  const AwardsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         drawer: const DrawerMenu(),
      body: ListView(
        children:  [
         const TopBarDesktop(),
        //  Gallery(),
      
         Display_Pic_and_Paragraph(
              title: 'Presentation at Programmer Meetup',
              body: 'I had the honor to speak at Joshua Copeland\'s Las Vegas Programmer meetup. I was given the opprotunity to share my app idea Polaris to an audience full of experienced programmers.',
              imageUrl: Responsive.isMobileOs(context) ?  'images/awards/AwardsGallery1_Mobile.png': 'images/awards/AwardsGallery1.png',
              curvesUrl: 'images/CurveLine2.png',
              height: 750,
            ),
             Display_Pic_and_Paragraph(
              title: 'Above and Beyond Scholarship',
              body: 'I earned the Above and Beyond scholarship for my performance in academics and sports. Besides being a geek I love to swim and bowl. The award is only given to one boy and one girl every year. I gave a speech at Sunset Station to a crowd of 100 people.',
               imageUrl: Responsive.isMobileOs(context) ?  'images/awards/AwardsGallery4_Mobile.png': 'images/awards/AwardsGallery4.png',
              curvesUrl: 'images/CurveLine1.png',
              isFlipped: true,
              height: 750,
            ),
             Display_Pic_and_Paragraph(
              title: 'FBI Teen Academy',
              body: 'I participated in a 6 week course offered by Nevada Help Desk partnered with the Federal Bureau of Investigation. I learned from active, on duty Special Agents. I learned and worked with them on subjects such as Cyber Sercurity, laws, and ethics.',
               imageUrl: Responsive.isMobileOs(context) ?  'images/awards/AwardsGallery7_Mobile.png': 'images/awards/AwardsGallery7.png',
              curvesUrl: 'images/CurveLine3.png',
            ),
             Display_Pic_and_Paragraph(
              title: 'Presentation at Tech Alley Demo Day',
              body: 'I presented my app, Polaris, at Demo Day in Downtown Las Vegas.',
               imageUrl: Responsive.isMobileOs(context) ?  'images/awards/AwardsGallery2_Mobile.png': 'images/awards/AwardsGallery2.png',
              curvesUrl: 'images/CurveLine4.png',
              isFlipped: true,
            ),
             Display_Pic_and_Paragraph(
              title: 'Facebook Blueprint 100 - 101 Certification',
              body: 'I got officially certified in Facebook\'s Ad Manager. This certification was given through Certiport.',
               imageUrl: Responsive.isMobileOs(context) ?  'images/awards/AwardsGallery5_Mobile.png': 'images/awards/AwardsGallery5.png',
              curvesUrl: 'images/CurveLine2.png',
            ),
             Display_Pic_and_Paragraph(
              title: 'Congressional Award',
              body: 'On my weekends I spend time teaching students 5th grade - 8th grade how to code using Scratch. Also during the week I hold app development classes for high schoolers. For this work I was awarded a Congressional Award by Senator Jackey Rosen and Catherine Cortez Masto.',
               imageUrl: Responsive.isMobileOs(context) ?  'images/awards/AwardsGallery3_Mobile.png': 'images/awards/AwardsGallery3.png',
              curvesUrl: 'images/CurveLine1.png',
              isFlipped: true,
              height: 870,
            ),
             Display_Pic_and_Paragraph(
              title: 'Apple Swift Associate Certification',
              body: 'I got officially certified in Apple Swift and Xcode. This certification was given through Certiport.',
              imageUrl: Responsive.isMobileOs(context) ?  'images/awards/AwardsGallery6_Mobile.png': 'images/awards/AwardsGallery6.png',
              curvesUrl: 'images/CurveLine4.png',
            ), 
            Display_Pic_and_Paragraph(
              title: 'Mixedplate Letter Of Recommendation',
              isFlipped: true,
              body: 'The president of Mixedplate Bowling wrote a letter of recommendation for me as a thank you for writing the software for her bowling league. If you want to know more, this project can be found on the Home page under Projects.',
              imageUrl: Responsive.isMobileOs(context) ?  'images/awards/AwardsGallery8_Mobile.png': 'images/awards/AwardsGallery8.png',
              curvesUrl: 'images/CurveLine4.png',
              height: 800,
            ),
            //  Display_Pic_and_Paragraph(
            //   title: '',
            //   body: '',
            //   imageUrl: Responsive.isMobileOs(context) ?  '': '',
            //   curvesUrl: 'images/CurveLine2.png',
            // ),
        const SizedBox(
           height: 100,
         ),
          const  FooterDesktop()
        ]
      ),
    );
  }
}
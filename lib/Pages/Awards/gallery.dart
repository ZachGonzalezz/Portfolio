import 'package:flutter/material.dart';
import 'package:personal_portfolio/Pages/Awards/gallery_pic.dart';
import 'package:personal_portfolio/responsive.dart';

class Gallery extends StatelessWidget {
  const Gallery({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Responsive.isMobileOs(context) ? 
      Column(
        children: [
          GalleryPicture(height: 600, url: '1', title: 'Presentation To Programmer Meetup', body: 'I had the honor to speak at Joshua Copeland\'s Las Vegas Programmer meetup. I was given the opprotunity to share my app idea Polaris to an audeince full of experienced programmers.'),
                GalleryPicture(height: 420, url: '4', title: 'Above and Beyond Scholarship', body: 'I earned the Above and Beyond scholarship for my performance in academics and sports. Besides being a geek I love to swim and bowl. The award is only given to one boy and one girl every year. I gave a speech at Sunset Station to a crowd of 100 people.'),
                GalleryPicture(height: 300, url: '7', title: 'FBI Teen Academy', body: 'I participated in a 6 week course offered by Nevada Help Desk partnered with the Federal Bureau of Investigation. I learned from active, on duty Special Agents. I learned and worked with them on subjects such as Cyber Sercurity, laws, and ethics.'),
                GalleryPicture(height: 480, url: '2', title: 'Presentation at Tech Alley Demo Day', body: 'I presented my app, Polaris, at Demo Day in Downtown Las Vegas. '),
               GalleryPicture(height: 300, url: '5', title: 'Facebook Blueprint 100 - 101 Certification', body: 'I got officially certified in Facebook\'s Ad Manager. This certification was given through Certiport.'),
               GalleryPicture(height: 710, url: '3', title: 'Congressional Award', body: 'On my weekends I spend time teaching students 5th grade - 8th grade how to code using Scratch. Also during the week I hold app development classes for high schoolers. For this work I was awarded a Congressional Award by Senator Jackey Rosen and Catherine Cortez Masto.'),
               GalleryPicture(height: 300, url: '6', title: 'Apple Swift Associate Certification', body: 'I got officially certified in Apple Swift and Xcode. This certification was given through Certiport.'),
        ],
      )
      : Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          SizedBox(
            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              
              children: [
                GalleryPicture(height: 600, url: '1', title: 'Presentation at Programmer Meetup', body: 'I had the honor to speak at Joshua Copeland\'s Las Vegas Programmer meetup. I was given the opprotunity to share my app idea Polaris to an audeince full of experienced programmers.'),
                GalleryPicture(height: 420, url: '4', title: 'Above and Beyond Scholarship', body: 'I earned the Above and Beyond scholarship for my performance in academics and sports. Besides being a geek I love to swim and bowl. The award is only given to one boy and one girl every year. I gave a speech at Sunset Station to a crowd of 100 people.'),
                GalleryPicture(height: 300, url: '7', title: 'FBI Teen Academy Certification', body: 'I participated in a 6 week course offered by Nevada Help Desk partnered with the Federal Bureau of Investigation. I learned from active, on duty Special Agents. I learned and worked with them on subjects such as Cyber Sercurity, laws, and ethics.'),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
               GalleryPicture(height: 480, url: '2', title: 'Presentation at Tech Alley Demo Day', body: 'I presented my app, Polaris, at Demo Day in Downtown Las Vegas. '),
               GalleryPicture(height: 300, url: '5', title: 'Facebook Blueprint 100-101 Certification', body: 'I got officially certified in Facebook\'s Ad Manager. This certification was given through Certiport.'),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
               GalleryPicture(height: 710, url: '3', title: 'Congressional Award', body: 'On my weekends I spend time teaching students 5th grade - 8th grade how to code using Scratch. Also during the week I hold app development classes for high schoolers. For this work I was awarded a Congressional Award by Senator Jackey Rosen and Catherine Cortez Masto.'),
               GalleryPicture(height: 300, url: '6', title: 'Apple Swift Associate Certification', body: 'I got officially certified in Apple Swift and Xcode. This certification was given through Certiport.'),
            ],
          ),

        ],
        
      ),
    );
  }
}
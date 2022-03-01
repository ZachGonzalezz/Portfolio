import 'package:flutter/material.dart';
import 'package:personal_portfolio/Widgets/gallery_pic.dart';

class Gallery extends StatelessWidget {
  const Gallery({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          SizedBox(
            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              
              children: [
                GalleryPicture(height: 500, url: '1', title: 'Presentation To Programmer Meetup', body: 'loremespeum'),
                GalleryPicture(height: 300, url: '4', title: 'Above and Beyond Scholarship', body: 'loremespeum'),
                GalleryPicture(height: 400, url: '7', title: 'FBI Teen Academy', body: 'loremespeum'),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
               GalleryPicture(height: 300, url: '2', title: 'Presentation at Tech Alley Demo Day', body: 'loremespeum'),
               GalleryPicture(height: 300, url: '5', title: 'Facebook Blueprint 100 - 100 Certification', body: 'loremespeum'),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
               GalleryPicture(height: 300, url: '3', title: 'Congressional Award', body: 'loremespeum'),
               GalleryPicture(height: 300, url: '6', title: 'Apple Swift Associate Certification', body: 'loremespeum'),
            ],
          ),

        ],
        
      ),
    );
  }
}
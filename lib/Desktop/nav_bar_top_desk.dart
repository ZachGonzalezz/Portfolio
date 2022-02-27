import 'package:flutter/material.dart';
import 'package:personal_portfolio/Widgets/topbar_button.dart';
import 'package:personal_portfolio/Widgets/topbar_textbutton.dart';

class TopBarDesktop extends StatelessWidget {
  const TopBarDesktop({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         
           Row(
            children: [
          Image.asset('images/Portfolio_Logo.png'),
          TopBarTextButton(title: 'Home', url: '/'),
          TopBarTextButton(title: 'My Story', url: ''),
          TopBarTextButton(title: 'Awards', url: ''),
          TopBarTextButton(title: 'Hobbies', url: ''),
          TopBarTextButton(title: 'Contact', url: '/contact'),
            ],
          ),
          Row(
            children: [
          TopBarButton(imageUrl: 'images/Github.png'),
          TopBarButton(imageUrl: 'images/Mail.png'),
          TopBarButton(imageUrl: 'images/LinkedIn.png'),
          TopBarButton(imageUrl: 'images/Vector-1.png'),
            ],
          )
         

          

        ],
      ),
    );
  }
}
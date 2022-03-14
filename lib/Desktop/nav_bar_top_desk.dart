import 'package:flutter/material.dart';
import 'package:personal_portfolio/Widgets/topbar_button.dart';
import 'package:personal_portfolio/Widgets/topbar_textbutton.dart';
import 'package:personal_portfolio/responsive.dart';

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
          Responsive.isMobileOs(context) ? IconButton(onPressed: (){
            Scaffold.of(context).openDrawer();
          }, icon: const Icon(Icons.menu, color: Colors.white, size: 40)) : const SizedBox(),
          Responsive.isMobileOs(context) ? const SizedBox() : Image.asset('images/Portfolio_Logo.png', width: 40, height: 40),
          Responsive.isMobileOs(context) ? const SizedBox() : TopBarTextButton(title: 'Home', url: '/'),
          Responsive.isMobileOs(context) ? const SizedBox() : TopBarTextButton(title: 'My Story', url: '/mystory'),
          Responsive.isMobileOs(context) ? const SizedBox() : TopBarTextButton(title: 'Accolades', url: '/myawards'),
          Responsive.isMobileOs(context) ? const SizedBox() : TopBarTextButton(title: 'Hobbies', url: '/hobbies'),
          Responsive.isMobileOs(context) ? const SizedBox() : TopBarTextButton(title: 'Contact', url: '/contact'),
            ],
          ),
          Row(
            children: [
          TopBarButton(imageUrl: 'images/Github.png', url: 'https://github.com/ZachGonzalezz',),
          TopBarButton(imageUrl: 'images/Mail.png',  url: 'zacharygonzalez1234@gmail.com', isMail: true,),
          TopBarButton(imageUrl: 'images/LinkedIn.png',  url: 'https://www.linkedin.com/in/zach-gonzalez-a30578213/',),
          TopBarButton(imageUrl: 'images/Vector-1.png',  url: 'https://www.youtube.com/channel/UCbeBL86MLcB5TN1pMkRu5k',),
            ],
          )
         

          

        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:personal_portfolio/Widgets/topbar_textbutton.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff31365C),
            Color(0xff0C0F25)
          ]
        )
      ),
      child: Column(
        children: [
          TopBarTextButton(title: 'Home', url: '/'),
          TopBarTextButton(title: 'My Story', url: '/mystory'),
          TopBarTextButton(title: 'Awards', url: '/myawards'),
          TopBarTextButton(title: 'Hobbies', url: '/hobbies'),
          TopBarTextButton(title: 'Contact', url: '/contact'),
        ],
      ),
      
    );
  }
}
import 'package:flutter/material.dart';
import 'package:personal_portfolio/Desktop/contact_form.dart';
import 'package:personal_portfolio/Desktop/footer_desktop.dart';
import 'package:personal_portfolio/Desktop/nav_bar_top_desk.dart';
import 'package:personal_portfolio/Widgets/draw.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         drawer: const DrawerMenu(),
      body: ListView(
        children: [
          const TopBarDesktop(),
          ContactForm(),
          const FooterDesktop()
        ]
      ),
    );
  }
}
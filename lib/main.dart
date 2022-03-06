import 'package:flutter/material.dart';
import 'package:personal_portfolio/Pages/Awards/awards_page.dart';
import 'package:personal_portfolio/Pages/Hobby/hobbies_page.dart';
import 'package:personal_portfolio/Pages/HomePage/home_page.dart';
import 'package:personal_portfolio/Pages/My_Stroy/my_story_page.dart';
import 'package:personal_portfolio/Pages/contact_page.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zach\'s Portfolio',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF0F0E13),
        primarySwatch: Colors.blue,
      ),
     initialRoute: '/',
      routes: {
        '/' : (BuildContext context) => const HomePage(),
        '/contact' : (BuildContext context) => const ContactPage(),
        '/mystory' : (BuildContext context) => const MyStoryPage(),
        '/hobbies' : (BuildContext context) =>  const HobbiesPage(),
        '/myawards' : (BuildContext context) => const AwardsPage(),
      },
    );
  }
}



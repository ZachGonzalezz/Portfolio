import 'package:flutter/material.dart';
import 'package:personal_portfolio/Pages/contact_page.dart';
import 'package:personal_portfolio/Pages/home_page.dart';
import 'package:personal_portfolio/Pages/my_story_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF0F0E13),
        primarySwatch: Colors.blue,
      ),
     initialRoute: '/',
      routes: {
        '/' : (BuildContext context) => const HomePage(),
        '/contact' : (BuildContext context) => const ContactPage(),
        '/mystory' : (BuildContext context) => const MyStoryPage(),
      },
    );
  }
}



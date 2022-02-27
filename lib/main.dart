import 'package:flutter/material.dart';
import 'package:personal_portfolio/Desktop/aboutme_desktop.dart';
import 'package:personal_portfolio/Desktop/intro_desktop.dart';
import 'package:personal_portfolio/Desktop/nav_bar_top_desk.dart';

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      
      body: Center(
       
       child: ListView(
         children: const [
           TopBarDesktop(),
           IntroDesktop(),
           AboutMeDesktop()

         ],
       ),
      
    )
    );
  }
}

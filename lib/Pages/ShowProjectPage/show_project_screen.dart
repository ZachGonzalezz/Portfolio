import 'package:flutter/material.dart';
import 'package:personal_portfolio/Desktop/footer_desktop.dart';
import 'package:personal_portfolio/Desktop/nav_bar_top_desk.dart';
import 'package:personal_portfolio/Pages/HomePage/automated_script_showcase.dart';
import 'package:personal_portfolio/Pages/HomePage/mixedplate_desktop.dart';
import 'package:personal_portfolio/Pages/HomePage/polaris_showcase.dart';
import 'package:personal_portfolio/Widgets/drawer.dart';

class ShowProjectScreen extends StatelessWidget {
  ShowProjectScreen({ Key? key, required this.nameOfProject }) : super(key: key);
  String nameOfProject;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerMenu(),
        body: Center(
      child: ListView(
        children: [
          const TopBarDesktop(),
          returnProject(context, nameOfProject),
          const FooterDesktop()
          
        ],
      ),
    ));
  }
}

Widget returnProject(BuildContext context, String nameOfProject){

  if(nameOfProject == 'Polaris'){
    return const PolarisShowcaseDesktop();
   }
   else if(nameOfProject == 'MixPlate'){
     return const MixedPlateShowcaseDesktop();
   }
   else if(nameOfProject == 'Automated Scripts'){
     return const AutomatedScriptShowcase();
   }
   else {
     return const SizedBox();
   }

}
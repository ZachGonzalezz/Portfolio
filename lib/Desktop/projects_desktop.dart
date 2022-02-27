import 'package:flutter/material.dart';
import 'package:personal_portfolio/Desktop/mixedplate_desktop.dart';
import 'package:personal_portfolio/Desktop/polaris_showcase.dart';
import 'package:personal_portfolio/constants.dart';

class ProjectsDesktop extends StatelessWidget {
  const ProjectsDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SizedBox(
     
        child: Column(
          children:  [
            SizedBox(
      
              child: TabBar(
                tabs: <Widget>[
                 Constants.getText(text: 'Polaris', fontsize: 40, weight: FontWeight.w900,),
                 Constants.getText(text: 'Mixedplate Bowling', fontsize: 40, weight: FontWeight.w900),
                 Constants.getText(text: 'Automated Script', fontsize: 40, weight: FontWeight.w900),
                ],
              ),
            ),
            const SizedBox(
              height: 1800,
              child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                children: <Widget>[
                  PolarisShowcaseDesktop(),
                  MixedPlateShowcaseDesktop(),
                  Center(
                    child: Text("It's sunny here"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

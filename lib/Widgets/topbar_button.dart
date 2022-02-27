import 'package:flutter/material.dart';
import 'package:personal_portfolio/responsive.dart';

// ignore: must_be_immutable
class TopBarButton extends StatelessWidget {
  TopBarButton({ Key? key, required this.imageUrl}) : super(key: key);

  String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
        child: Image.asset(imageUrl, width: 30, height: 30,),
        onTap: (){
          //if on mobile open url launched
          if(Responsive.isMobileOs(context)){

          }
          //else open new tab
          else {

          }
        },
        
      ),
    );
  }
}
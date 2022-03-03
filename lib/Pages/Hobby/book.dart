import 'package:flutter/material.dart';

class Book extends StatelessWidget {
  Book({ Key? key, required this.url }) : super(key: key);
  String url;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'images/book' + url + '.png'
    );
  }
}
import 'package:flutter/material.dart';
import 'package:personal_portfolio/responsive.dart';

class Book extends StatelessWidget {
  Book({Key? key, required this.url}) : super(key: key);
  String url;
  @override
  Widget build(BuildContext context) {
    return Image.asset('images/book' + url + '.png',
        height: Responsive.isSuperBigDesktop(context)
            ? 500
            : Responsive.isBigDesktop(context)
                ? 400
                : null,
        fit: BoxFit.fill);
  }
}

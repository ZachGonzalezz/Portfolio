import 'package:flutter/material.dart';
import 'package:personal_portfolio/constants.dart';
import 'package:personal_portfolio/responsive.dart';

class TextfieldContact extends StatelessWidget {
  TextfieldContact(
      {Key? key,
      required this.height,
      required this.controller,
      required this.title})
      : super(key: key);
  TextEditingController controller;
  double height;
  String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Constants.getText(text: title, fontsize: 20),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: Responsive.isSuperBigDesktop(context) ? 800 : 500,
            child: TextField(
              maxLines: (height / 100).round(),
              controller: controller,
              decoration:
                  const InputDecoration(fillColor: Colors.white, filled: true),
            ),
          )
        ],
      ),
    );
  }
}

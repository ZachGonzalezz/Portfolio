import 'package:flutter/material.dart';
import 'package:personal_portfolio/Widgets/heading_with_underline.dart';
import 'package:personal_portfolio/constants.dart';
import 'package:personal_portfolio/responsive.dart';

class AwardShowcase extends StatelessWidget {
  AwardShowcase(
      {Key? key, required this.title, required this.text, required this.images})
      : super(key: key);
  String title;
  String text;
  List<String> images;
  @override
  Widget build(BuildContext context) {
    return Responsive.isMobileOs(context)
        ? Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.chevron_left,
                        color: Colors.white, size: 50)),
              ),
              Column(
                children: images
                    .map((e) => Image.asset(
                          'images/awards/AwardsGallery' + e + '.png',
                          width: MediaQuery.of(context).size.width / 2,
                        ))
                    .toList(),
              ),
              Responsive.isMobile(context)
                  ? const SizedBox(height: 30)
                  : const SizedBox(),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeadingWithUnderline(text: title),
                    Constants.getText(text: text, fontsize: 30)
                  ],
                ),
              ),
              Responsive.isMobile(context)
                  ? const SizedBox(height: 50)
                  : const SizedBox(),
            ],
          )
        : Padding(
          padding: const EdgeInsets.all(30.0),
          child: Row(
              children: [
                Column(
                  children: images
                      .map((e) => Image.asset(
                            'images/awards/AwardsGallery' + e + '.png',
                            width: MediaQuery.of(context).size.width / 2,
                          ))
                      .toList(),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HeadingWithUnderline(text: title),
                      Constants.getText(text: text, fontsize: 30)
                    ],
                  ),
                )
              ],
            ),
        );
  }
}

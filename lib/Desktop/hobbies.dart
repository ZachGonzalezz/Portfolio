import 'package:flutter/material.dart';
import 'package:personal_portfolio/Widgets/book.dart';
import 'package:personal_portfolio/constants.dart';

class Hobbies extends StatelessWidget {
  Hobbies({Key? key}) : super(key: key);
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController subject = TextEditingController();
  TextEditingController message = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(200, 30, 200, 30),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xFF1D1B34)),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Constants.getText(
                  text: 'Reading', fontsize: 30, weight: FontWeight.bold),
              Constants.getText(
                text:
                    'One of the things I enjoy doing on my free time is reading books. By doing so, it allows me to gain more knowledge and learn things that will prepare me for my future endeavors. Here are some of my recent titles. ',
                fontsize: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.infinity,
                  height: 10,
                  color: const Color(0xFF3E3A45),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Book(url: '1'),
                  Book(url: '2'),
                  Book(url: '3'),
                  Book(url: '4'),
                  Book(url: '5'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:personal_portfolio/Widgets/textfield_form.dart';
import 'package:personal_portfolio/constants.dart';

class ContactForm extends StatelessWidget {
  ContactForm({Key? key}) : super(key: key);
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  TextfieldContact(height: 100, controller: name, title: 'Name'),
                  TextfieldContact(
                      height: 100, controller: email, title: 'Email'),
                  TextfieldContact(
                      height: 100, controller: subject, title: 'Subject'),
                  TextfieldContact(
                      height: 600, controller: message, title: 'Message'),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextButton(
                        onPressed: () {},
                        child: Container(
                            color: Color(0xFF6B7FEA),
                            child: Padding(
                              padding: EdgeInsets.all(12),
                              child: Constants.getText(
                                  text: 'Submit',
                                  fontsize: 30,
                                  weight: FontWeight.bold),
                            ))),
                  )
                ],
              ),
              SizedBox(
                width: 350,
                child: Column(
                  children: [
                    Constants.getText(
                        text: "Let's Chat",
                        fontsize: 35,
                        weight: FontWeight.w800),
                    Constants.getText(text: '''
Looking to learn more? 
Feel free to inquire about services or schedule and appointment.
''', fontsize: 20, alignment: TextAlign.center),
                   const SizedBox(
                      height: 10,
                    ),
                    Constants.getText(
                        text: "Email",
                        fontsize: 35,
                        weight: FontWeight.w800),
                    Constants.getText(text: '''
zacharygonzalez1234@gmail.com
''', fontsize: 20, alignment: TextAlign.center),
                   const SizedBox(
                      height: 10,
                    ),
                    Constants.getText(
                        text: "Number",
                        fontsize: 35,
                        weight: FontWeight.w800),
                    Constants.getText(text: '''
(702) 553 - 7534
''', fontsize: 20, alignment: TextAlign.center),
                   const SizedBox(
                      height: 10,
                    ),
                    Constants.getText(
                        text: "Appointment",
                        fontsize: 35,
                        weight: FontWeight.w800),
                    Constants.getText(text: '''
calendly.com/zacharygonzalez1234 
''', fontsize: 20, alignment: TextAlign.center),
                   const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

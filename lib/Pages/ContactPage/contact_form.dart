import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:personal_portfolio/Pages/ContactPage/textfield_form.dart';
import 'package:personal_portfolio/constants.dart';
import 'package:personal_portfolio/responsive.dart';

class ContactForm extends StatelessWidget {
  ContactForm({Key? key}) : super(key: key);
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController subject = TextEditingController();
  TextEditingController messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Responsive.isMobileOs(context) ? EdgeInsets.all(10) : EdgeInsets.fromLTRB(200, 30, 200, 30),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xFF1D1B34)),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: 
          Responsive.isMobileOs(context) ?

          Column(
            children: [
  Column(
                children: [
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
Feel free to inquire about my services by emailing or by requesting an appointment.
''', fontsize: 20, alignment: TextAlign.center),
                    const SizedBox(
                      height: 10,
                    ),
                    Constants.getText(
                        text: "Email", fontsize: 35, weight: FontWeight.w800),
                    Constants.getText(text: '''
zacharygonzalez1234@gmail.com
''', fontsize: 20, alignment: TextAlign.center),
                    const SizedBox(
                      height: 10,
                    ),
                    Constants.getText(
                        text: "Number", fontsize: 35, weight: FontWeight.w800),
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
              ),
                  TextfieldContact(
                      height: 100, controller: name, title: 'Name'),
                  TextfieldContact(
                      height: 100, controller: email, title: 'Email'),
                  TextfieldContact(
                      height: 100, controller: subject, title: 'Subject'),
                  TextfieldContact(
                      height: 600,
                      controller: messageController,
                      title: 'Message'),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextButton(
                        onPressed: () async {
                          final url = Uri.parse(
                              'https://api.emailjs.com/api/v1.0/email/send');
                          http.post(url,
                              headers: {'Content-Type': 'application/json'},
                              body: json.encode({
                                'service_id': 'service_8i2t9k6',
                                'template_id': 'template_bs3agmp',
                                'user_id': '_C0OzKdSlnQXQihKP',
                                'template_params': {
                                  'user_name':
                                      name.text + ' from email: ' + email.text,
                                  'user_email': email.text,
                                  'user_subject': subject.text,
                                  'user_message': messageController.text,
                                }
                              }));
                        },
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
              
            ],
          ) :
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  TextfieldContact(
                      height: 100, controller: name, title: 'Name'),
                  TextfieldContact(
                      height: 100, controller: email, title: 'Email'),
                  TextfieldContact(
                      height: 100, controller: subject, title: 'Subject'),
                  TextfieldContact(
                      height: 600,
                      controller: messageController,
                      title: 'Message'),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextButton(
                        onPressed: () async {
                          final url = Uri.parse(
                              'https://api.emailjs.com/api/v1.0/email/send');
                          http.post(url,
                              headers: {'Content-Type': 'application/json'},
                              body: json.encode({
                                'service_id': 'service_8i2t9k6',
                                'template_id': 'template_bs3agmp',
                                'user_id': '_C0OzKdSlnQXQihKP',
                                'template_params': {
                                  'user_name':
                                      name.text + ' from email: ' + email.text,
                                  'user_email': email.text,
                                  'user_subject': subject.text,
                                  'user_message': messageController.text,
                                }
                              }));
                        },
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
Feel free to inquire about my services by emailing or by requesting an appointment.
''', fontsize: 20, alignment: TextAlign.center),
                    const SizedBox(
                      height: 10,
                    ),
                    Constants.getText(
                        text: "Email", fontsize: 35, weight: FontWeight.w800),
                    Constants.getText(text: '''
zacharygonzalez1234@gmail.com
''', fontsize: 20, alignment: TextAlign.center),
                    const SizedBox(
                      height: 10,
                    ),
                    Constants.getText(
                        text: "Number", fontsize: 35, weight: FontWeight.w800),
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

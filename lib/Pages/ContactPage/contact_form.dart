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
      padding: Responsive.isMobileOs(context)
          ? const EdgeInsets.all(30)
          : Responsive.isSuperBigDesktop(context)
              ? const EdgeInsets.fromLTRB(400, 100, 400, 100)
              : Responsive.isBigDesktop(context)
                  ? const EdgeInsets.fromLTRB(300, 100, 300, 100)
                  : const EdgeInsets.fromLTRB(200, 30, 200, 30),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xFF1D1B34)),
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Responsive.isMobileOs(context)
              ? Column(
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
                              onPressed: () {
                                sumbit(context);
                              },
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF3778F6),
                                      borderRadius: BorderRadius.circular(10)),
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
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        TextfieldContact(
                            height:
                                Responsive.isBigDesktop(context) ? 200 : 100,
                            controller: name,
                            title: 'Name'),
                        TextfieldContact(
                            height:
                                Responsive.isBigDesktop(context) ? 200 : 100,
                            controller: email,
                            title: 'Email'),
                        TextfieldContact(
                            height:
                                Responsive.isBigDesktop(context) ? 200 : 100,
                            controller: subject,
                            title: 'Subject'),
                        TextfieldContact(
                            height:
                                Responsive.isBigDesktop(context) ? 900 : 600,
                            controller: messageController,
                            title: 'Message'),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: TextButton(
                              onPressed: () {
                                sumbit(context);
                              },
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF3778F6),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        20, 10, 20, 10),
                                    child: Constants.getText(
                                        text: 'Submit',
                                        fontsize: 30,
                                        weight: FontWeight.bold),
                                  ))),
                        )
                      ],
                    ),
                    SizedBox(
                      width: Responsive.isSuperBigDesktop(context)
                          ? 750
                          : Responsive.isBigDesktop(context)
                              ? 600
                              : 350,
                      child: Column(
                        children: [
                          Constants.getText(
                              text: "Let's Chat",
                              fontsize:
                                  Responsive.isBigDesktop(context) ? 50 : 35,
                              weight: FontWeight.w800),
                          Constants.getText(
                              text: '''
Looking to learn more? 
Feel free to inquire about my services by emailing or by requesting an appointment.
''',
                              fontsize:
                                  Responsive.isBigDesktop(context) ? 30 : 20,
                              alignment: TextAlign.center),
                          const SizedBox(
                            height: 10,
                          ),
                          Constants.getText(
                              text: "Email",
                              fontsize:
                                  Responsive.isBigDesktop(context) ? 50 : 35,
                              weight: FontWeight.w800),
                          Constants.getText(
                              text: '''
zacharygonzalez1234@gmail.com
''',
                              fontsize:
                                  Responsive.isBigDesktop(context) ? 30 : 20,
                              alignment: TextAlign.center),
                          const SizedBox(
                            height: 10,
                          ),
                          Constants.getText(
                              text: "Number",
                              fontsize:
                                  Responsive.isBigDesktop(context) ? 50 : 35,
                              weight: FontWeight.w800),
                          Constants.getText(
                              text: '''
(702) 553 - 7534
''',
                              fontsize:
                                  Responsive.isBigDesktop(context) ? 30 : 20,
                              alignment: TextAlign.center),
                          const SizedBox(
                            height: 10,
                          ),
                          Constants.getText(
                              text: "Appointment",
                              fontsize:
                                  Responsive.isBigDesktop(context) ? 50 : 35,
                              weight: FontWeight.w800),
                          Constants.getText(
                              text: '''
calendly.com/zacharygonzalez1234 
''',
                              fontsize:
                                  Responsive.isBigDesktop(context) ? 30 : 20,
                              alignment: TextAlign.center),
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

  void sumbit(BuildContext context) {
    if (messageController.text.isNotEmpty &&
        subject.text.isNotEmpty &&
        name.text.isNotEmpty &&
        email.text.isNotEmpty) {
      final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
      http.post(url,
          headers: {'Content-Type': 'application/json'},
          body: json.encode({
            'service_id': 'service_8i2t9k6',
            'template_id': 'template_bs3agmp',
            'user_id': '_C0OzKdSlnQXQihKP',
            'template_params': {
              'user_name': name.text + ' from email: ' + email.text,
              'user_email': email.text,
              'user_subject': subject.text,
              'user_message': messageController.text,
            }
          }));
      clearTextFields();
    } else {
      showPopUp(context);
    }
  }

  void clearTextFields() {
    messageController.text = '';
    name.text = '';
    email.text = '';
    subject.text = '';
  }

  void showPopUp(BuildContext context) {
    Future.delayed(Duration(seconds: 0));
    WidgetsBinding.instance!.addPostFrameCallback((_) => showDialog(
        context: context, builder: (context) {
   return AlertDialog(
              backgroundColor: const Color(0xFF1D1B34),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0))),
              title: Center(
                  child: Constants.getText(
                      text: 'Incomplete',
                      alignment: TextAlign.center,
                      fontsize: 30,
                      weight: FontWeight.w800)),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Constants.getText(
                      text: 'Make sure you put your name email subject message',
                      alignment: TextAlign.center,
                      fontsize: 30),
                  const SizedBox(
                    height: 50,
                  ),
                  TextButton(
                      onPressed: () {
                        sumbit(context);
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              color: const Color(0xFF3778F6),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: EdgeInsets.all(12),
                            child: Constants.getText(
                                text: 'Okay',
                                fontsize: 30,
                                weight: FontWeight.bold),
                          ))),
                ],
              ),
            );
         } ));
  }
}

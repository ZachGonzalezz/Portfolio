
import 'package:flutter/material.dart';
import 'package:personal_portfolio/constants.dart';
import 'package:personal_portfolio/responsive.dart';
import 'package:universal_html/html.dart' hide Navigator;
import 'package:url_launcher/url_launcher.dart' ;

class FooterDesktop extends StatelessWidget {
  const FooterDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        color: const Color(0xFF0B0629),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: SizedBox(
            height: Responsive.isMobileOs(context) ? 250 : 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Constants.getText(
                    text: '© Zachary Gonzalez 2022',
                    color: const Color(0xFF909090),
                    fontsize: 20),
                SizedBox(
                  width: 620,
                  child: 
                  Responsive.isMobileOs(context) ? Column(
                    
                    children: [
                      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                           TextButton(
                            onPressed: () {
                                 String url =
                                  'https://polaristech.tech/howto/ResumeProfessional.pdf';
                              if(Responsive.isMobileOs(context)){
                                launch(url);
                              }
                              else {
                           
                              AnchorElement anchorElement =
                                  AnchorElement(href: url);
                              anchorElement.download = url;
                              anchorElement.click();
                              }

                              // File file = File;// generated somewhere
                              // final rawData = file.readAsBytesSync();
                              // final content = base64Encode(rawData);
                              // final anchor = AnchorElement(
                              //     href: "data:application/octet-stream;charset=utf-16le;base64,$content")
                              //   ..setAttribute("download", "file.txt")
                              //   ..click();
                            },
                            child: Constants.getText(
                                text: 'View My Resume',
                                color: const Color(0xFF909090),
                                isUnderline: true,
                                fontsize: 20)),
                        TextButton(
                            onPressed: () {
                              launch(
                                  'https://github.com/ZachGonzalezz/Portfolio/tree/master');
                            },
                            child: Constants.getText(
                                text: 'Source Code',
                                color: const Color(0xFF909090),
                                isUnderline: true,
                                fontsize: 20)),
                        ],
                      ),
                      Row(
                                     mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Constants.getText(
                                text: 'Apple App',
                                color: const Color(0xFF909090),
                                isUnderline: true,
                                fontsize: 20)),
                        TextButton(
                            onPressed: () {},
                            child: Constants.getText(
                                text: 'Android App',
                                color: const Color(0xFF909090),
                                isUnderline: true,
                                fontsize: 20)),
                        ],
                      )
                    ],
                  ) :
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton(
                            onPressed: () {
                                 String url =
                                  'http://zacharygonzalez.me/resume/Resume.pdf';
                              if(Responsive.isMobileOs(context)){
                                launch(url);
                              }
                              else {
                           
                              AnchorElement anchorElement =
                                  AnchorElement(href: url);
                              anchorElement.download = url;
                              anchorElement.click();
                              }

                              // File file = File;// generated somewhere
                              // final rawData = file.readAsBytesSync();
                              // final content = base64Encode(rawData);
                              // final anchor = AnchorElement(
                              //     href: "data:application/octet-stream;charset=utf-16le;base64,$content")
                              //   ..setAttribute("download", "file.txt")
                              //   ..click();
                            },
                            child: Constants.getText(
                                text: 'View My Resume',
                                color: const Color(0xFF909090),
                                isUnderline: true,
                                fontsize: 20)),
                        TextButton(
                            onPressed: () {
                              launch(
                                  'https://github.com/ZachGonzalezz/Portfolio/tree/master');
                            },
                            child: Constants.getText(
                                text: 'Source Code',
                                color: const Color(0xFF909090),
                                isUnderline: true,
                                fontsize: 20)),
                        TextButton(
                            onPressed: () {},
                            child: Constants.getText(
                                text: 'Apple App',
                                color: const Color(0xFF909090),
                                isUnderline: true,
                                fontsize: 20)),
                        TextButton(
                            onPressed: () {},
                            child: Constants.getText(
                                text: 'Android App',
                                color: const Color(0xFF909090),
                                isUnderline: true,
                                fontsize: 20)),
                      ]),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/contact');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xFF35348E),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Constants.getText(text: 'Contact', fontsize: 20),
                      ),
                    )),
                Constants.getText(
                    text: 'Designed in Figma & Built in Flutter',
                    color: const Color(0xFF909090),
                    fontsize: 20),
                Constants.getText(
                    text: 'Last Updated 3.2.22',
                    color: const Color(0xFF909090),
                    fontsize: 20),
              ],
            ),
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:personal_portfolio/constants.dart';

class GalleryPicture extends StatefulWidget {
  GalleryPicture(
      {Key? key,
      required this.height,
      required this.url,
      required this.title,
      required this.body})
      : super(key: key);
  double height;
  String url;
  String title;
  String body;
  @override
  _GalleryPictureState createState() => _GalleryPictureState();
}

class _GalleryPictureState extends State<GalleryPicture> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Container(
          decoration: const BoxDecoration(color: Color(0xFF394DB2)),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: SizedBox(
              height: widget.height,
              width: MediaQuery.of(context).size.width / 3.3,
              child: MouseRegion(
                onHover: (event) {
                  setState(() {
                    isHovering = true;
                  });
                  //change to black showcase
                },
                onExit: (event) {
                  setState(() {
                    isHovering = false;
                  });
                },
                child: Stack(
                  children: [
                    Image.asset(
                      'images/awards/AwardsGallery' + widget.url + '.png',
                      height: widget.height,
                      width: MediaQuery.of(context).size.width / 3.3,
                      fit: BoxFit.fill,
                    ),
                    isHovering
                        ? Container(
                            height: widget.height,
                            width: MediaQuery.of(context).size.width / 3.1,
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.8)),
                            child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(30.0),
                                  child: Constants.getText(
                                      text: widget.title,
                                      fontsize: 30,
                                      weight: FontWeight.w800, alignment: TextAlign.center),
                                )),
                          )
                        : const SizedBox(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

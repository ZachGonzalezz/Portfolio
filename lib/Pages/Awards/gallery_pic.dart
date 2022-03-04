import 'package:flutter/material.dart';
import 'package:personal_portfolio/Pages/Awards/award_show.dart';
import 'package:personal_portfolio/constants.dart';
import 'package:personal_portfolio/responsive.dart';

class GalleryPicture extends StatefulWidget {
  GalleryPicture(
      {Key? key,
      required this.height,
      required this.url,
      required this.title,
      required this.body,
      this.images})
      : super(key: key);
  double height;
  String url;
  String title;
  String body;
  List<String>? images;
  @override
  _GalleryPictureState createState() => _GalleryPictureState();
}

class _GalleryPictureState extends State<GalleryPicture> {
  bool isHovering = false;
  @override
  void initState() {
    super.initState();
    widget.images ??= [];

    //on first load loads original image to image array so when passed over if user click it shows intro_text
    widget.images!.add(widget.url);
  }

  @override
  Widget build(BuildContext context) {
    if (Responsive.isMobileOs(context)) {
      //this keeps
      isHovering = true;
    }

    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => AwardShowScreen(
                    title: widget.title,
                    text: widget.body,
                    images: widget.images!)));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Container(
          decoration: const BoxDecoration(color: Color(0xFF394DB2)),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: SizedBox(
              height: widget.height,
              width: Responsive.isMobileOs(context)
                  ? MediaQuery.of(context).size.width / 1.2
                  : Responsive.isSuperBigDesktop(context)
                      ? MediaQuery.of(context).size.width / 4.5
                      : MediaQuery.of(context).size.width / 3.3,
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
                     Responsive.isMobileOs(context)
                          ? 'images/awards/AwardsGallery' + widget.url + '_Mobile' + '.png' : 'images/awards/AwardsGallery' + widget.url + '.png',
                      height: widget.height,
                      width: Responsive.isMobileOs(context)
                          ? MediaQuery.of(context).size.width / 1.2
                          : MediaQuery.of(context).size.width / 3.3,
                      fit: BoxFit.fill,
                    ),
                    isHovering
                        ? Container(
                            height: widget.height,
                            width: Responsive.isMobileOs(context)
                                ? MediaQuery.of(context).size.width / 1.2
                                : MediaQuery.of(context).size.width / 3.3,
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.8)),
                            child: Center(
                                child: Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Constants.getText(
                                  text: widget.title,
                                  fontsize: 30,
                                  weight: FontWeight.w800,
                                  alignment: TextAlign.center),
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

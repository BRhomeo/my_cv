import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServicesCard extends StatefulWidget {
  final IconData serviceIcon;
  final String serviceTitle;
  final List seeMore;
  const ServicesCard(
      {Key? key,
      required this.serviceIcon,
      required this.serviceTitle,
      required this.seeMore})
      : super(key: key);

  @override
  _ServicesCardState createState() => _ServicesCardState();
}

class _ServicesCardState extends State<ServicesCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding:
            EdgeInsets.only(left: 16, top: 32.0, right: 16.0.w, bottom: 16.0.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              widget.serviceIcon,
              size: 30,
              color: const Color(0xff6E85B2),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              widget.serviceTitle,
              style: GoogleFonts.ubuntu(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 15,
            ),
            TextButton(
              onPressed: () {
                Get.defaultDialog(
                  radius: 50,
                  backgroundColor: const Color(0xff261C2C),
                  title: widget.serviceTitle,
                  titleStyle: GoogleFonts.ubuntu(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w500),
                  content: SizedBox(
                    height: widget.seeMore.length > 3 ? 185 : 60,
                    width: 250,
                    child: widget.seeMore.length > 1
                        ? ListView.builder(
                            itemExtent: 35,
                            itemCount: widget.seeMore.length,
                            itemBuilder: (context, index) {
                              return Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.circle,
                                    color: Color(0xff6E85B2),
                                    size: 10,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    widget.seeMore[index],
                                    style: GoogleFonts.ubuntu(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              );
                            })
                        : Center(
                            child: Text(
                            widget.seeMore[0],
                            style: GoogleFonts.ubuntu(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w300),
                          )),
                  ),
                  textCancel: 'cancel',
                  cancelTextColor: const Color(0xff6E85B2),
                  buttonColor: const Color(0xff6E85B2),
                );
              },
              child: IntrinsicWidth(
                child: Row(
                  children: [
                    Text(
                      'View Moew',
                      style: GoogleFonts.ubuntu(
                          color: const Color(0xff6E85B2),
                          fontSize: 10,
                          fontWeight: FontWeight.w800),
                    ),
                    const Icon(
                      Icons.arrow_right_alt_rounded,
                      color: Color(0xff6E85B2),
                      size: 20,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// ListView.builder(
//                         itemCount: widget.seeMore.length,
//                         itemBuilder: (context, index) {
//                           return Text('List data');
//                         }),
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SkillsDropList extends StatefulWidget {
  final String title;
  final Widget titleIcon;
  final List skillsList;

  const SkillsDropList(
      {Key? key,
      required this.title,
      required this.titleIcon,
      required this.skillsList})
      : super(key: key);

  @override
  State<SkillsDropList> createState() => _SkillsDropListState();
}

class _SkillsDropListState extends State<SkillsDropList> {
  List<Widget> buildBody(List bodyList) {
    List<Widget> body = [];

    for (int i = 0; i < bodyList.length; i++) {
      body.add(
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  bodyList[i][0],
                  style: GoogleFonts.ubuntu(
                      color: Colors.white,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  bodyList[i][1],
                  style: GoogleFonts.ubuntu(
                      color: Colors.white,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Slider(
              min: 0,
              max: 100,
              value: 80,
              onChanged: (d) {},
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      );
    }

    return body;
  }

  bool isopen = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25),
      child: SizedBox(
        width: 400.sp,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  isopen = !isopen;
                });
              },
              //!title
              child: Row(
                children: [
                  widget.titleIcon,
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    widget.title,
                    style: GoogleFonts.ubuntu(
                        color: Colors.white,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.white,
                    size: 25.sp,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //!sub list
            if (isopen)
              ListView.builder(
                  padding: const EdgeInsets.only(right: 20, left: 40),
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: widget.skillsList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              widget.skillsList[index][0].toString(),
                              style: GoogleFonts.ubuntu(
                                  color: Colors.white,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              '${widget.skillsList[index][1]}%',
                              style: GoogleFonts.ubuntu(
                                  color: Colors.grey,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Slider(
                          min: 0,
                          max: 100,

                          value: widget.skillsList[index][1].toDouble(),
                          // widget.skillsList[index][1],
                          onChanged: (d) {},
                        ),
                        const SizedBox(
                          height: 20,
                        )
                      ],
                    );
                  }),
          ],
        ),
      ),
    );
  }
}

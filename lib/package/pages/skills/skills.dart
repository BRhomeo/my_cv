import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_cv/package/pages/skills/Components/droplist.dart';

class Skills extends StatefulWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  _SkillsState createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  List<String> headers = [
    'platForms expirens with Flutter ',
    'Flutter expirens',
    'gineral programing skills'
  ];
  var isopen = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 25, top: 50),
        child: Wrap(
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            //! Column title
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 50.h),
                child: Column(
                  children: [
                    Text(
                      'Skills',
                      style: GoogleFonts.ubuntu(
                          color: Colors.white,
                          fontSize: 35.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'My technical level',
                      style: GoogleFonts.ubuntu(
                        color: Colors.grey,
                        fontSize: 17.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ExpansionPanelList(
              expansionCallback: (i, op) {
                setState(() {
                  isopen = !isopen;
                });
              },
              children: [
                ExpansionPanel(
                  headerBuilder: (context, isopen) => const Text('hi'),
                  body: const Text('data'),
                  isExpanded: isopen,
                  canTapOnHeader: true,
                ),
              ],
            ),
            const SkillsDropList(),
          ],
        ),
      ),
    );
  }
}

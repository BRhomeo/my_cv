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
  List<Map<String, List<String>>> mySkillsMap = [
    {
      'platForms expirens with Flutter ': [
        'android 80%',
        'ios 40%',
        'web 75%',
        'windows 60%',
        'mac 50%'
      ],
    },
    {
      'Flutter expirens': [
        '3ed party library 90%',
        'custmaize laibraes 70%',
        'make clean and profictinal code 90%',
        'make an Ui as espacted 90%',
        'Them and localization 90%',
        'resposve Ui 80%',
        'state mangment packeages 70%'
      ],
    },
    {
      'gineral programing skills': [
        'OOP 70%',
        'data structure 50%',
        'SQl database 65%',
        '3ed party api 80%',
        'firebase 80%',
        'git & github 60%',
        'Group warkcing 85%',
        'Commit to the deadline 95%'
      ]
    }
  ];
  var isopen = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 25, top: 50),
        child: Column(
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

            Expanded(
              child: ListView.builder(
                itemCount: mySkillsMap.length,
                // mySkillsMap.length,
                itemBuilder: (context, index) {
                  return SkillsDropList(
                      title: mySkillsMap[index].keys.first,
                      skillsList: mySkillsMap[index].values.first);
                  //mySkillsMap[index].keys.toString()
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

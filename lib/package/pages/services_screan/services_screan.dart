import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_cv/package/pages/services_screan/Components/services_card.dart';

class ServicesScrean extends StatefulWidget {
  const ServicesScrean({Key? key}) : super(key: key);

  @override
  _ServicesScreanState createState() => _ServicesScreanState();
}

class _ServicesScreanState extends State<ServicesScrean> {
  List appDevelopment = [
    'Develop a Full flutter project',
    'Build Front-End ',
    'Build Back-End ',
    'Adjust an exist project',
    'Debuging the app',
  ];
  List moreWillAdded = [
    'That\'s it for now,\nMore Services will be\nadded in the future',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            //!column title
            Padding(
              padding: EdgeInsets.only(top: 40.h),
              child: Column(
                children: [
                  Text(
                    'Services',
                    style: GoogleFonts.ubuntu(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'What i offer',
                    style: GoogleFonts.ubuntu(
                      color: Colors.grey,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),

            const Spacer(),
            //!Serves Wrap
            Align(
              alignment: Alignment.center,
              child: Wrap(
                children: [
                  ServicesCard(
                    serviceIcon: Icons.developer_mode_rounded,
                    serviceTitle: 'Application\nDevelopment',
                    seeMore: appDevelopment,
                  ),
                  ServicesCard(
                    serviceIcon: Icons.watch_later_outlined,
                    serviceTitle: 'More will \nbe added',
                    seeMore: moreWillAdded,
                  ),
                ],
              ),
            ),

            const Spacer(),

            const Spacer(),

            const Spacer(),
          ],
        ),
      ),
    );
  }
}

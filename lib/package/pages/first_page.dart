import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_cv/assets/project_icons.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff261C2C),
      body: Center(
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            //!socal icons
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    ProjectIcons.github,
                    color: const Color(0xff5C527F),
                    size: 30.r,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    ProjectIcons.linkedin,
                    color: const Color(0xff5C527F),
                    size: 30.r,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    ProjectIcons.facebook,
                    color: const Color(0xff5C527F),
                    size: 30.r,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 20.w,
            ),
            //! my inmg
            Container(
              //   color: Colors.black,
              child: Image.asset(
                'assets\\me.png',
                width: 200.w,
              ),
            ),
            const SizedBox(
              height: 35,
              width: 25,
            ),
            //! Short text
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Hello, I\'m Ibrahim',
                  style: GoogleFonts.ubuntu(
                      color: Colors.white,
                      fontSize: 35.sp,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 140),
                  child: Text(
                    'Flutter Developer',
                    style: GoogleFonts.ubuntu(
                        color: Colors.white, fontSize: 20.sp),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    'High level experience in Flutter Development\n and knowledge , producing quality work.',
                    style: GoogleFonts.ubuntu(
                        color: Colors.white, fontSize: 15.sp),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

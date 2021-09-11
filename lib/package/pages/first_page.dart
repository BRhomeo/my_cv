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
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  //!socal icons
                  Container(
                    //color: Colors.black,
                    width: 500,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 5.w,
                        ),
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
                          width: 15.w,
                        ),
                        //! my inmg
                        Container(
                          // color: Colors.black,
                          child: Image.asset(
                            'assets\\me.png',
                            width: 350,
                            // height: 350.h,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(
                    // height: 35,
                    width: 25,
                  ),
                  //! Short text
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 35,
                        //  width: 40,
                      ),
                      Text(
                        'Hi, I\'m Ibrahim',
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
                              color: Colors.white, fontSize: 23),
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
                              color: Colors.white, fontSize: 17),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 250, top: 15),
                        child: Container(
                          height: 45,
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.send_rounded),
                            label: const Text('Contact Me'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10.w, 75.h, 10.w, 0.h),
                  child: TextButton(
                    onPressed: () {},
                    child: SizedBox(
                      width: 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Icon(
                            Icons.mouse_outlined,
                            color: Color(0xff6E85B2),
                            size: 15,
                          ),
                          Text(
                            'Scroll Down',
                            style: GoogleFonts.ubuntu(
                                color: Colors.white, fontSize: 15),
                          ),
                          const Icon(
                            Icons.arrow_downward,
                            color: Color(0xff6E85B2),
                            size: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  _AboutMeState createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 25, top: 30.h),
        child: Wrap(
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            //! Column title Abuot Me + my introduction
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 40.h),
                child: Column(
                  children: [
                    Text(
                      'About Me',
                      style: GoogleFonts.ubuntu(
                          color: Colors.white,
                          fontSize: 35.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'My introduction',
                      style: GoogleFonts.ubuntu(
                        color: Colors.grey,
                        fontSize: 17.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //!my img

            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(90),
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(90),
              ),
              // color: Colors.black,
              child: Image.asset(
                'assets\\metwo.jpg',
                width: 350,

                // height: 350.h,
              ),
            ),

            Column(
              children: [
                //!long text
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Flutter Developer, with extensive Knowledge \n and good ecperience , Cross Plat Forms \n technologies Frontend & backend,\ndelevering quality work.',
                    style: GoogleFonts.ubuntu(
                        color: Colors.white,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                //!Column inside Row
                Padding(
                  padding: EdgeInsets.only(bottom: 20.h),
                  child: IntrinsicWidth(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '02+',
                              style: GoogleFonts.ubuntu(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w600),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              'Years \n experience',
                              style: GoogleFonts.ubuntu(
                                color: Colors.grey,
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '03+',
                              style: GoogleFonts.ubuntu(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w600),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              'complieted \n projects',
                              style: GoogleFonts.ubuntu(
                                  color: Colors.grey,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w600),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '01',
                              style: GoogleFonts.ubuntu(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w600),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              'companies\n worked',
                              style: GoogleFonts.ubuntu(
                                  color: Colors.grey,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w600),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                //!Downloud my Sv
                ElevatedButton(
                    onPressed: () {},
                    child: IntrinsicWidth(
                      child: Row(
                        children: const [
                          Text(
                            'Downloud CV',
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(
                            Icons.download,
                            size: 20,
                          )
                        ],
                      ),
                    )),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

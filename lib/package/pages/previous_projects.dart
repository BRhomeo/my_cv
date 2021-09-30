import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PreviousProjects extends StatefulWidget {
  const PreviousProjects({Key? key}) : super(key: key);

  @override
  State<PreviousProjects> createState() => _PreviousProjectsState();
}

class _PreviousProjectsState extends State<PreviousProjects> {
  final Map projects = {
    'ToDo Tasks': [
      'assets\\img\\todo.jpg',
      'A very simple app to manje the tasks , deppend on sqflite package , theres a local notifiction'
    ],
    'Destiny 2 Lore': [
      'assets\\img\\lore.jpg',
      'An app deppend on 3ed party api to viwe the game story\'s '
    ],
  };
  final pageController = CarouselController();
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            //!column title
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 40.h),
                child: Column(
                  children: [
                    Text(
                      'Previous Projects',
                      style: GoogleFonts.ubuntu(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'My Previous Projects',
                      style: GoogleFonts.ubuntu(
                        color: Colors.grey,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            Column(
              children: [
                CarouselSlider.builder(
                  carouselController: pageController,
                  itemCount: projects.length,
                  itemBuilder: (context, index, realIndex) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 25,
                          ),
                          Text(
                            '${projects.keys.elementAt(index)}',
                            style: GoogleFonts.ubuntu(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Image.asset(
                            '${projects.values.elementAt(index)[0]}',
                            height: 200,
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Text(
                            '${projects.values.elementAt(index)[1]}',
                            style: GoogleFonts.ubuntu(
                              color: Colors.grey,
                              fontSize: 17,
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                        ],
                      ),
                    );
                  },
                  options: CarouselOptions(
                      initialPage: i,
                      enableInfiniteScroll: false,
                      height: 400,
                      onPageChanged: (index, r) {
                        setState(() {
                          i = index;
                        });
                      }),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          log(i.toString());
                          if (i > 0) {
                            --i;
                          }
                        });
                        pageController.previousPage();
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Color(0xff6E85B2),
                      ),
                    ),
                    AnimatedSmoothIndicator(
                      count: projects.length,
                      activeIndex: i,
                      effect: const JumpingDotEffect(
                        dotWidth: 20,
                        dotHeight: 15,
                        activeDotColor: Color(0xff6E85B2),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        log(i.toString());
                        setState(() {
                          if (i < projects.length - 1) {
                            ++i;
                          }
                        });
                        pageController.nextPage();
                      },
                      icon: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Color(0xff6E85B2),
                      ),
                    ),
                  ],
                )
              ],
            ),
            const Spacer(),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

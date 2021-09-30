import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_cv/package/pages/contact_screan/Components/contact_card.dart';

class ContactMeScrean extends StatelessWidget {
  const ContactMeScrean({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            //? title
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 40.h),
                child: Column(
                  children: [
                    Text(
                      'Contact Me',
                      style: GoogleFonts.ubuntu(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Contact Me on',
                      style: GoogleFonts.ubuntu(
                        color: Colors.grey,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const Spacer(),
            Wrap(
              runSpacing: 50,
              spacing: 50,
              children: const [
                ContactCard(
                  title: '+962 77 646 2372',
                  theIcon: FontAwesomeIcons.whatsapp,
                ),
                ContactCard(
                    title: 'Ibrahim AbuJaber',
                    theIcon: FontAwesomeIcons.facebook),
                ContactCard(
                    title: 'ibrahimabujaber98\n@gmail.com',
                    theIcon: FontAwesomeIcons.envelope),
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

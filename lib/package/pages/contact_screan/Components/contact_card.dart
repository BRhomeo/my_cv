import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({Key? key, required this.title, required this.theIcon})
      : super(key: key);
  final String title;
  final IconData theIcon;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: const BoxDecoration(
              color: Color(0xff6E85B2),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          height: 160,
          width: 160,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                height: 35,
              ),
              SelectableText(
                title,
                style: GoogleFonts.ubuntu(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
              TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Click here to chat',
                      style: GoogleFonts.ubuntu(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w300),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(
                      FontAwesomeIcons.arrowRight,
                      color: Colors.white,
                      size: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: -25,
          left: 42,
          child: CircleAvatar(
            radius: 40,
            backgroundColor: Colors.white,
            child: Icon(
              theIcon,
              color: const Color(0xff6E85B2),
              size: 35,
            ),
          ),
        ),
      ],
    );
  }
}

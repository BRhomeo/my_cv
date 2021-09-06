import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  var isopen = false;
  var selected = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: isopen ? 150 : 60,
      color: const Color(0xff5C527F),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          //!meniu
          Align(
            alignment: Alignment.centerLeft,
            child: TextButton.icon(
              icon: const Icon(
                Icons.menu,
                size: 25,
              ),
              label: Text(isopen ? 'Hide' : ''),
              onPressed: () {
                setState(() {
                  isopen = !isopen;
                });
              },
            ),
          ),

          const SizedBox(
            width: 30,
          ),
          const Spacer(),
          //! pages
          SizedBox(
            width: double.infinity,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Home
                  TextButton.icon(
                    icon: Icon(
                      Icons.home,
                      size: 25,
                      color: selected == 0
                          ? Colors.white
                          : const Color(0xff6E85B2),
                    ),
                    label: Text(
                      isopen ? 'Home' : '',
                      style: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      setState(() {
                        selected = 0;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //Skills
                  TextButton.icon(
                    icon: Icon(
                      Ionicons.flash,
                      size: 25,
                      color: selected == 1 ? Colors.white : Colors.black,
                    ),
                    label: Text(isopen ? 'Skills' : ''),
                    onPressed: () {
                      setState(() {
                        selected = 1;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //Services
                  TextButton.icon(
                    icon: Icon(
                      Icons.business_center,
                      size: 25,
                      color: selected == 2 ? Colors.white : Colors.black,
                    ),
                    label: Text(isopen ? 'Services' : ''),
                    onPressed: () {
                      setState(() {
                        selected = 2;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //Portfolio
                  TextButton.icon(
                    icon: Icon(
                      Ionicons.file_tray_full,
                      size: 25,
                      color: selected == 3 ? Colors.white : Colors.black,
                    ),
                    label: Text(isopen ? 'Portfolio' : ''),
                    onPressed: () {
                      setState(() {
                        selected = 3;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //Contactme
                  TextButton.icon(
                    icon: Icon(
                      Icons.send,
                      size: 25,
                      color: selected == 4 ? Colors.white : Colors.black,
                    ),
                    label: Text(isopen ? 'Contactme' : ''),
                    onPressed: () {
                      setState(() {
                        selected = 4;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton.icon(
                icon: const Icon(
                  Icons.arrow_upward,
                  size: 25,
                ),
                label: Text(isopen ? 'Go up' : ''),
                onPressed: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton.icon(
                icon: const Icon(
                  Icons.wb_sunny,
                  size: 25,
                ),
                label: Text(isopen ? 'Change Theme' : ''),
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

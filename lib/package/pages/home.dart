import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_cv/package/Components/drawer.dart';
import 'package:my_cv/package/pages/about_me.dart';
import 'package:my_cv/package/pages/first_page.dart';
import 'package:my_cv/package/pages/skills/skills.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

//TODO: USR FLOW WIDGET FO IMAGE
class _HomePageState extends State<HomePage> {
  var controller = PageController(
    initialPage: 2,
  );
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => GetMaterialApp(
        theme: ThemeData.light().copyWith(
          textTheme: const TextTheme(bodyText1: TextStyle(color: Colors.white)),
          scaffoldBackgroundColor: const Color(0xff261C2C),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              primary: Colors.black,
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
            primary: const Color(0xff6E85B2),
          )),
        ),
        home: Scaffold(
          backgroundColor: Colors.white,
          body: Row(
            children: const [
              AppDrawer(),
              Expanded(
                child: Skills(),
                //  PageView(
                //   pageSnapping: false,
                //   scrollDirection: Axis.vertical,
                //   controller: controller,
                //   children: const [
                //     FirstPage(),
                //     AboutMe(),
                //     Skills(),
                //   ],
                // ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

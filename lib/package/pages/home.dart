import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_cv/package/pages/Components/drawer.dart';
import 'package:my_cv/package/pages/first_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

//TODO: USR FLOW WIDGET FO IMAGE
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => GetMaterialApp(
        theme: ThemeData.light().copyWith(
            textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            primary: Colors.black,
          ),
        )),
        home: Scaffold(
          backgroundColor: Colors.white,
          body: Row(
            children: const [
              AppDrawer(),
              Expanded(child: FirstPage()),
            ],
          ),
        ),
      ),
    );
  }
}

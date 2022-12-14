import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:music_app/screens/intro/info.dart';
// import 'package:music_app/screens/intro/splashscreen.dart';
// import 'mainpage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const Music());
}

class Music extends StatelessWidget {
  const Music({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: false,
      builder: (BuildContext context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Listen',
        home: const IntroPage(),
        theme: ThemeData.dark(),
        // color: Colors.black,
      ),
    );
  }
}

//

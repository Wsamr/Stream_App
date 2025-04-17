import 'package:flutter/material.dart';
import 'package:untitled/core/AppColor.dart';
import 'package:untitled/screens/mainPage.dart';

void main() {
  runApp(const StreamApp());
}

class StreamApp extends StatelessWidget {
  const StreamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Appcolors().backGroundColor,
        appBarTheme: AppBarTheme(color: Appcolors().backGroundColor),
      ),
      debugShowCheckedModeBanner: false,
      home: Mainpage(),
    );
  }
}

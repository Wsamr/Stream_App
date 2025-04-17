import 'package:flutter/material.dart';

import '../core/AppColor.dart';
import 'BottomNavigatorScreens/DiscoverScreen.dart';
import 'BottomNavigatorScreens/HomePage.dart';
import 'BottomNavigatorScreens/Profile.dart';


class Mainpage extends StatefulWidget {
  Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  int i = 0;

  List<Widget> screens = [
    Homepage(),
    Discoverscreen(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Appcolors().backGroundColor,
        selectedItemColor: Appcolors().IconColor,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
                size: 44.0,
              ),
              label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.play_circle_fill_rounded,
              size: 44.0,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 44.0,
              ),
              label: "Home"),
        ],
        currentIndex: i,
        onTap: (value) {
          setState(() {
            i = value;
          });
        },
      ),
      body: screens[i],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:untitled/widgets/ReadyPlayerCard.dart';
import 'package:untitled/widgets/SilderList.dart';

import '../../core/AppColor.dart';
import '../../core/AppString.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              "Stream",
              style: Appstring().latoText(
                  color: Appcolors().mainColor,
                  size: 28,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Everywhere",
              style: Appstring().latoText(
                  color: Appcolors().white,
                  size: 28,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(height: 0,),
         Readyplayercard(),
          Padding(
            padding: const EdgeInsets.only(left: 22),
            child: Text(
              "Trending",
              style: Appstring().latoText(
                  color: Appcolors().white,
                  size: 28,
                  fontWeight: FontWeight.w500),
            ),
          ),
         Silderlist(),
        ],
      ),
    );
  }
}

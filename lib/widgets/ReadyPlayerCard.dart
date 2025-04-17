import 'package:flutter/material.dart';
import 'package:untitled/core/AppColor.dart';
import 'package:untitled/core/AppString.dart';

class Readyplayercard extends StatelessWidget {
  const Readyplayercard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            height: 230,
            width: 390,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              image: DecorationImage(
                image: NetworkImage(
                    "https://tse1.mm.bing.net/th?id=OIP.P3ByqFvZs14yRQislf7T1AHaFE&pid=Api&P=0&h=220"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: 10,
            top: 130,
            child: Container(
              width: 265,
              height: 80,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Appcolors().greyOfOpc,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                children: [
                  Icon(Icons.play_circle_fill_rounded,color: Appcolors().IconColor,size: 40,),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Continue Watching",style: Appstring().latoText(color: Appcolors().white, size: 18, fontWeight: FontWeight.normal),),
                      Text("Ready Player one",style: Appstring().latoText(color: Appcolors().white, size: 22, fontWeight: FontWeight.w600),),

                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ) ;
  }
}

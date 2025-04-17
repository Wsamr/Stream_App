import 'package:flutter/material.dart';
import 'package:untitled/core/AppString.dart';

import '../core/AppColor.dart';

class Silderitem extends StatelessWidget {
   Silderitem({super.key,required this.i});
   String i;
  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12,right: 12),
          child: Container(

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              image: DecorationImage(
                  image: NetworkImage(i),
                  fit: BoxFit.fill

              ),
            ),

          ),
        ),
        Positioned(
          left:210,
          top:40,
          child: Container(
            height: 50,
            width: 100,
            decoration: BoxDecoration(
              color: Appcolors().greyOfOpc,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text("IMDb",style: TextStyle(color: Appcolors().white,fontSize: 15),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Icon(Icons.star,color: Colors.yellow,size: 25,),
                      SizedBox(width: 10,),
                      Text("7.0",style: TextStyle(color: Appcolors().white,fontSize: 18)),
                    ],),
                ),

              ],
            ),

          ),
        ),
        Positioned(
          top: 250,
          left: 32,
          child: Container(
            height: 100,
            width: 280,
            decoration: BoxDecoration(
              color: Appcolors().greyOfOpc,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Center(child: Text("Star Wars: The Last Jedi",style: Appstring().latoText(color: Appcolors().white, size: 22, fontWeight: FontWeight.w600),)),
          ),
        ),
      ],
    );
  }
}

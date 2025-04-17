import 'package:flutter/material.dart';
import 'package:untitled/core/AppColor.dart';
import '../core/AppString.dart';

class Categoryitem extends StatelessWidget {
   Categoryitem({super.key,required this.title,required this.onClick,required this.on});
  String title;
  Function () onClick;
  bool on;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Row(
        children: [
          Text(title,style: Appstring().latoText(color: on?Appcolors().mainColor:Colors.white, size: 16, fontWeight: FontWeight.w300),),
          SizedBox(width: 40,),
        ],
      ),
    );
  }
}

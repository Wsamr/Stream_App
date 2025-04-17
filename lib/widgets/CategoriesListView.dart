
import 'package:flutter/material.dart';
import 'package:untitled/widgets/CategoryItem.dart';

class Categorieslistview extends StatelessWidget {
   Categorieslistview({super.key,required this.onClick,required this.on});
   Function () onClick;
   bool on;
  List<String> cate=[
    "Movies","Tv Series","Documentary","Sports",
  ];
  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Categoryitem(title: cate[index],onClick: onClick,on: on,);
        },
        itemCount: cate.length,
      ),
    );
  }
}


import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:untitled/models/SilderItemModel.dart';

import 'SilderItem.dart';

class Silderlist extends StatelessWidget {
  Silderlist({super.key});
  List<String> images = [
    "https://tse1.mm.bing.net/th?id=OIP.P3ByqFvZs14yRQislf7T1AHaFE&pid=Api&P=0&h=220",
    "https://tse1.mm.bing.net/th?id=OIP.P3ByqFvZs14yRQislf7T1AHaFE&pid=Api&P=0&h=220",
    "https://tse1.mm.bing.net/th?id=OIP.P3ByqFvZs14yRQislf7T1AHaFE&pid=Api&P=0&h=220"
  ];

  @override
  Widget build(BuildContext context) {
    return  CarouselSlider(
        items: images.map(
              (i) {
            return Builder(
              builder: (BuildContext context) {
                return Silderitem(i: i);
              },
            );
          },
        ).toList(),
        options: CarouselOptions(
          height: 380,
          autoPlay: true,
          viewportFraction: .8,
          enlargeCenterPage: true,
          enlargeFactor: 0.2,

        ));
  }
}

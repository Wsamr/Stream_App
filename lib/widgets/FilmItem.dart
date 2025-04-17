import 'package:flutter/material.dart';

import '../core/AppColor.dart';
import '../core/AppString.dart' show Appstring;

class Filmitem extends StatelessWidget {
   Filmitem({super.key,required this.image});
 String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.network(
            image,
          ),
        ),
        SizedBox(height: 15),
        Text(
          "Soul (2020)",
          style: Appstring().latoText(
            color: Appcolors().white,
            size: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

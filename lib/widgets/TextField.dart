import 'package:flutter/material.dart';

import '../core/AppColor.dart';

class FieldText extends StatelessWidget {
  const FieldText({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      decoration: InputDecoration(
        prefixIconColor: Appcolors().white,
        prefixIcon: Icon(Icons.search),
        hintText: "Sherlock Holmes",
        filled: true,
        fillColor:Colors.white10,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),

        ),
      ),
    );
  }
}

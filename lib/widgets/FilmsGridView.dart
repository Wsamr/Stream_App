import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../core/AppColor.dart' show Appcolors;
import '../core/AppString.dart';

class Filmsgridview0 extends StatelessWidget {
  const Filmsgridview0({super.key});

  @override
  Widget build(BuildContext context) {
    return    MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: Expanded(
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
          ),
          itemCount: 20,
          itemBuilder: (context, index) {
            return  ;
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:untitled/core/AppColor.dart';
import 'package:untitled/core/AppString.dart';
import 'package:untitled/widgets/CategoriesListView.dart';
import 'package:untitled/widgets/FilmItem.dart';
import 'package:untitled/widgets/FilmsGridView.dart';
import 'package:untitled/widgets/TextField.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Discoverscreen extends StatefulWidget {
  Discoverscreen({super.key});

  @override
  State<Discoverscreen> createState() => _DiscoverscreenState();
}

class _DiscoverscreenState extends State<Discoverscreen> {
  bool g = false;
  List <String> images=[
    "http://fr.web.img6.acsta.net/pictures/17/09/26/14/20/0755233.jpg",
    "http://www.pixelstalk.net/wp-content/uploads/2016/07/Free-1080p-Movie-HD-Pictures.jpg",
    "https://getwallpapers.com/wallpaper/full/0/b/6/1495701-beautiful-4k-movie-wallpapers-2700x1519-for-windows.jpg",
    "http://fr.web.img6.acsta.net/pictures/17/09/26/14/20/0755233.jpg",
    "https://d26oc3sg82pgk3.cloudfront.net/files/media/edit/image/52331/article_full%403x.jpg",
    "http://www.pixelstalk.net/wp-content/uploads/2016/07/Free-1080p-Movie-HD-Pictures.jpg",
    "https://getwallpapers.com/wallpaper/full/0/b/6/1495701-beautiful-4k-movie-wallpapers-2700x1519-for-windows.jpg",
    "http://fr.web.img6.acsta.net/pictures/17/09/26/14/20/0755233.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: SizedBox(height: 30)),
            SliverToBoxAdapter(
              child: Text(
                "Find Movies, Tv series,",
                style: Appstring().latoText(
                  color: Appcolors().white,
                  size: 30,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Text(
                "and more..",
                style: Appstring().latoText(
                  color: Appcolors().white,
                  size: 30,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 20)),
            SliverToBoxAdapter(child: FieldText()),
            SliverToBoxAdapter(
              child: Categorieslistview(
                onClick: () {
                  setState(() {
                    g = true;
                  });
                },
                on: g,
              ),
            ),
            SliverMasonryGrid.count(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childCount: images.length,
              itemBuilder: (context, index) {
                return Filmitem(image: images[index],);
              },
            ),
          ],
        ),
      ),
    );
  }
}

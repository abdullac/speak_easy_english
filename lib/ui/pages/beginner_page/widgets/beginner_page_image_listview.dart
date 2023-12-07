import 'package:flutter/material.dart';
import 'package:speak_easy_english/ui/pages/beginner_page/widgets/beginner_page_imagetile.dart';


class ImageListView extends StatelessWidget {
   ImageListView({
    super.key,
  });

  // Sample images
  final btnBgImg = Image.network('https://via.placeholder.com/150',
      width: 80.0, height: 80.0);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          5, // Replace with the desired count
          (index) => ListItemImageTile(
            listItemImage: btnBgImg,
            listItemText: 'Image $index',
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:speak_easy_english/ui/shared/widgets/imagetile.dart';
import 'package:speak_easy_english/utils/constents/enums.dart';



class ImageListView extends StatelessWidget {
  final OnTapImageListView onTapImageListView;
  final String? itemText;
  ImageListView({
    super.key,
    required this.onTapImageListView,
    this.itemText,
  });

  // Sample texts
  List<String> listItemTexts = [
    "Fruits",
    "Vegs",
    "Fruits",
    "Vegs",
    "Fruits",
    "Vegs",
    "Fruits",
    "Vegs",
    "Fruits",
    "Vegs",
  ];
  // Sample images
  List<String> listItemImages = [
    "assets/images/applesample.jpeg",
    "assets/images/applesample.jpeg",
    "assets/images/applesample.jpeg",
    "assets/images/applesample.jpeg",
    "assets/images/applesample.jpeg",
    "assets/images/applesample.jpeg",
    "assets/images/applesample.jpeg",
    "assets/images/applesample.jpeg",
    "assets/images/applesample.jpeg",
    "assets/images/applesample.jpeg",
  ];
  // final btnBgImg = Image.network('https://via.placeholder.com/150',
  //     width: 80.0, height: 80.0);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          listItemTexts.length, // Replace with the desired count
          (index) => ListItemImageTile(
            onTapImageListView: onTapImageListView,
            listItemImage: listItemImages[index],
            listItemText: listItemTexts[index],
          ),
        ),
      ),
    );
  }
}

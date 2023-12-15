import 'package:flutter/material.dart';
import 'package:speak_easy_english/utils/constents/border_radius.dart';
import 'package:speak_easy_english/utils/constents/colours.dart';

class ListItemImageTile extends StatelessWidget {
  final Image listItemImage;
  final String? listItemText;
  const ListItemImageTile({
    super.key,
    required this.listItemImage,
    this.listItemText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 4.0,
      ),
      decoration: BoxDecoration(
        borderRadius: borderRadius10,
        border: Border.all(
          color: maroon,
        ), // Maroon shade
      ),
      child: Column(
        children: [
          Container(
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage('assets/images/applesample.jpeg'),
                  fit: BoxFit.cover),
              borderRadius: borderRadius10,
            ),
            // child: btnBgImg,
          ),
          // listItemText != null ? Text(listItemText!) : SizedBox(),
          if (listItemText != null) Text(listItemText!),
        ],
      ),
    );
  }
}

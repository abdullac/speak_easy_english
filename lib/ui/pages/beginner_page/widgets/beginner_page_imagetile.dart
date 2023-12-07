import 'package:flutter/material.dart';

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
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: const Color(0xFF800000)), // Maroon shade
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
              borderRadius: BorderRadius.circular(10.0),
            ),
            // child: btnBgImg,
          ),
          if (listItemText != null) Text(listItemText!),
        ],
      ),
    );
  }
}

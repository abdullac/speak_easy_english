import 'package:flutter/material.dart';

class ImageItemBackground extends StatelessWidget {
  const ImageItemBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Image.network(
        'https://previews.123rf.com/images/kovalnadiya/kovalnadiya1906/kovalnadiya190600084/125525575-mango-tropical-fruit-on-a-dark-wooden-background-flat-lay-place-for-text-food-concept-vertical-image.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}

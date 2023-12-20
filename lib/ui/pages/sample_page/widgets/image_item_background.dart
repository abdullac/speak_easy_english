import 'package:flutter/material.dart';

class ImageItemBackground extends StatelessWidget {
  final String bgImage;
  const ImageItemBackground({
    super.key,
    required this.bgImage,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Image.asset(
        bgImage,
        fit: BoxFit.cover,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:speak_easy_english/utils/constents/colours.dart';

class ImageItemNameButton extends StatelessWidget {
  const ImageItemNameButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ButtonStyle(
          backgroundColor:
              MaterialStatePropertyAll(appBarColor.withOpacity(0.5))),
      onPressed: () {},
      icon: const Icon(Icons.volume_up),
      label: const Text(
        'Image Name',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
          color: Colors.white,
        ),
      ),
    );
  }
}

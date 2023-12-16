import 'package:flutter/material.dart';
import 'package:speak_easy_english/ui/shared/widgets/image_listview.dart';

class SampleImageListview extends StatelessWidget {
  const SampleImageListview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 50.0, // Adjust as needed
      left: 0,
      right: 0,
      child: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 5,
            )
          ],
        ),
        child: ImageListView(),
      ),
    );
  }
}
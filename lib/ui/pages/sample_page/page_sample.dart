import 'package:flutter/material.dart';
import 'package:speak_easy_english/ui/shared/widgets/icon_buttonwith_shadow.dart';
import 'package:speak_easy_english/ui/pages/sample_page/widgets/image_item_background.dart';
import 'package:speak_easy_english/ui/pages/sample_page/widgets/image_itgemname_button.dart';
import 'package:speak_easy_english/ui/shared/widgets/image_listview.dart';
import 'package:speak_easy_english/utils/constents/colours.dart';

class SamplePage extends StatelessWidget {
  const SamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          // Background image
          ImageItemBackground(),

          // ImageListView
          ImageListview(),

          // WordText
          ItemNameButton(),

          // Icon Buttons
          IconButtons(),
        ],
      ),
    );
  }
}

class ImageListview extends StatelessWidget {
  const ImageListview({
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

class ItemNameButton extends StatelessWidget {
  const ItemNameButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      left: 0,
      right: 0,
      bottom: 56.0,
      child: Column(
        children: [
          ImageItemNameButton(),
        ],
      ),
    );
  }
}

class IconButtons extends StatelessWidget {
  const IconButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      left: 12.0,
      bottom: 12.0,
      right: 12.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButtonWithShadow(icon: Icons.volume_up),
          IconButtonWithShadow(icon: Icons.mic),
          IconButtonWithShadow(icon: Icons.mic_off),
        ],
      ),
    );
  }
}

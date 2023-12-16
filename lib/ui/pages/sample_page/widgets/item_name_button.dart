import 'package:flutter/material.dart';
import 'package:speak_easy_english/ui/pages/sample_page/widgets/image_itgemname_button.dart';

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

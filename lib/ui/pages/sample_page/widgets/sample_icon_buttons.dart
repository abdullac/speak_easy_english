import 'package:flutter/material.dart';
import 'package:speak_easy_english/ui/shared/widgets/icon_buttonwith_shadow.dart';

class SampleIconButtons extends StatelessWidget {
  const SampleIconButtons({
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

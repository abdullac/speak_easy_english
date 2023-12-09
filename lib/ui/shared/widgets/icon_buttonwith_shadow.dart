import 'package:flutter/material.dart';
import 'package:speak_easy_english/utils/constents/colours.dart';

class IconButtonWithShadow extends StatelessWidget {
  final IconData icon;
  const IconButtonWithShadow({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        icon,
        color: appBarColor,
        shadows: const [
          Shadow(
            color: Colors.black,
            blurRadius: 10,
          )
        ],
      ),
      onPressed: () {
        // Add your volume button functionality here
      },
    );
  }
}

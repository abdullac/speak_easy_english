import 'package:flutter/material.dart';

class IntroductionPageTitle extends StatelessWidget {
  const IntroductionPageTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'INTRODUCTION',
      style: TextStyle(
        color: Colors.white,
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

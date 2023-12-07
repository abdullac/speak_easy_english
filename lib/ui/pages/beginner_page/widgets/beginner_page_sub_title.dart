import 'package:flutter/material.dart';

class SubTitle extends StatelessWidget {
  final String title;
  const SubTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, bottom: 4.0),
      child: Text(
        title,
        style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF009688)),
      ),
    );
  }
}



// class SubTitle extends StatelessWidget {
//   const SubTitle({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

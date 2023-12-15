import 'package:flutter/material.dart';
import 'package:speak_easy_english/ui/pages/knowledge_page/widgets/self_introduction_section.dart';
import 'package:speak_easy_english/ui/pages/knowledge_page/widgets/speak_word_section.dart';
import 'package:speak_easy_english/utils/constents/colours.dart';
import 'package:speak_easy_english/utils/constents/spaces.dart';

class PageKnowledge extends StatelessWidget {
  const PageKnowledge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: lightGreyscale,
      backgroundColor: lightMaroon,
      appBar: AppBar(
        title: const Text(
          'KNOWLEDGE',
          style: TextStyle(fontWeight: FontWeight.bold, color: lightYellow),
        ),
        // backgroundColor: Colors.teal, // Teal color for app bar
        backgroundColor: maroon,
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SelfIntroduceSection(),
            spaceV8,
            SpeakWordSection(),
          ],
        ),
      ),
    );
  }
}





// class TextFieldWithMicWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         const Expanded(
//           child: TextField(
//             decoration: InputDecoration(
//               hintText: 'Type here...',
//             ),
//           ),
//         ),
//         IconButton(
//           icon: const Icon(Icons.mic),
//           onPressed: () {
//             // Handle mic button press
//           },
//         ),
//       ],
//     );
//   }
// }

// class ImageListViewWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 100.0,
//       child: ListView(
//         scrollDirection: Axis.horizontal,
//         children: [
//           ImageListItemWidget(
//               image: 'assets/images/applesample.jpeg', text: 'Image 1'),
//           ImageListItemWidget(
//               image: 'assets/images/speakeasyenglishlogo.png', text: 'Image 2'),
//           ImageListItemWidget(
//               image: 'assets/images/speakeasyenglishlogo.png', text: 'Image 3'),
//           ImageListItemWidget(
//               image: 'assets/images/speakeasyenglishlogo.png', text: 'Image 4'),
//           ImageListItemWidget(
//               image: 'assets/images/speakeasyenglishlogo.png', text: 'Image 5'),
//           ImageListItemWidget(
//               image: 'assets/images/speakeasyenglishlogo.png', text: 'Image 6'),
//           ImageListItemWidget(
//               image: 'assets/images/speakeasyenglishlogo.png', text: 'Image 7'),
//           ImageListItemWidget(
//               image: 'assets/images/speakeasyenglishlogo.png', text: 'Image 8'),
//           ImageListItemWidget(
//               image: 'assets/images/speakeasyenglishlogo.png', text: 'Image 9'),
//           // Add more ImageListItemWidget as needed
//         ],
//       ),
//     );
//   }
// }

// class ImageListItemWidget extends StatelessWidget {
//   final String image;
//   final String text;

//   ImageListItemWidget({required this.image, required this.text});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.all(8.0),
//       child: Column(
//         children: [
//           Image.asset(
//             image,
//             height: 60.0,
//             width: 60.0,
//             fit: BoxFit.cover,
//           ),
//           const SizedBox(height: 4.0),
//           Text(text),
//         ],
//       ),
//     );
//   }
// }

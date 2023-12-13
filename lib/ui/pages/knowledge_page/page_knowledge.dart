import 'package:flutter/material.dart';

class PageKnowledge extends StatelessWidget {
  const PageKnowledge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Development'),
        backgroundColor: Colors.teal, // Teal color for app bar
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SELF INTRODUCE SECTION
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(12),
              ),
              child: SectionWidget(
                title: 'SELF INTRODUCE',
                children: [
                  ContentTextWidget(
                    text:
                        "സ്വയം പരിചയപ്പെടുത്തുക: സ്വന്തം കുറിപ്പ് ഇങ്ങനെയാണ്...",
                  ),
                  Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.teal.shade400,
                borderRadius: BorderRadius.circular(12),
              ),
                    child: Column(
                      children: [
                        SingleChildScrollView(
                          // Introduced words
                          child: Container(
                            width: double.infinity,
                            height: 40,
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(8)),
                            child: const Text(
                                "User spoken words in malayalam\nfdsgfdg\nssdfgfsdgfdg\ngertgdfgfdgdf\ngddfgdfgdfg"),
                          ),
                        ),
                        const SizedBox(height: 4,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton.icon(
                              onPressed: () {},
                              icon: const Icon(Icons.mic),
                              label: const Text("TAKE INTRODUCTION"),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: const Text("HELP"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // TextFieldWithMicWidget(),
                ],
              ),
            ),

            const SizedBox(height: 8),

            // SPEAK WORDS SECTION
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(12),
              ),
              child: SectionWidget(
                title: 'SPEAK WORDS',
                children: [
                  // Malayalam Subsection
                  SubSectionWidget(
                    title: 'Malayalam',
                    color: const Color(0xFF8E354A), // Maroon shade
                    children: [
                      ContentTextWidget(
                        text:
                            "മലയാളം സാധാരണമായ മാധ്യമങ്ങളിലൂടെ പ്രചരിക്കുന്ന ഒരു ഭാഷ...",
                      ),
                      ImageListViewWidget(),
                    ],
                  ),

                  // English Subsection
                  SubSectionWidget(
                    title: 'English',
                    color: Colors.lime, // Lime color
                    children: [
                      ContentTextWidget(
                        text:
                            "English is a widely spoken language with a rich literary tradition...",
                      ),
                      ImageListViewWidget(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SectionWidget extends StatelessWidget {
  final String title;
  final List<Widget> children;

  SectionWidget({required this.title, required this.children});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8.0),
        ...children,
        const SizedBox(height: 16.0),
      ],
    );
  }
}

class SubSectionWidget extends StatelessWidget {
  final String title;
  final Color color;
  final List<Widget> children;

  SubSectionWidget(
      {required this.title, required this.color, required this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8.0),
          ...children,
        ],
      ),
    );
  }
}

class ContentTextWidget extends StatelessWidget {
  final String text;

  ContentTextWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 16.0),
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

class ImageListViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ImageListItemWidget(
              image: 'assets/images/speakeasyenglishlogo.png', text: 'Image 1'),
          ImageListItemWidget(
              image: 'assets/images/speakeasyenglishlogo.png', text: 'Image 2'),
          ImageListItemWidget(
              image: 'assets/images/speakeasyenglishlogo.png', text: 'Image 3'),
          ImageListItemWidget(
              image: 'assets/images/speakeasyenglishlogo.png', text: 'Image 4'),
          ImageListItemWidget(
              image: 'assets/images/speakeasyenglishlogo.png', text: 'Image 5'),
          ImageListItemWidget(
              image: 'assets/images/speakeasyenglishlogo.png', text: 'Image 6'),
          ImageListItemWidget(
              image: 'assets/images/speakeasyenglishlogo.png', text: 'Image 7'),
          ImageListItemWidget(
              image: 'assets/images/speakeasyenglishlogo.png', text: 'Image 8'),
          ImageListItemWidget(
              image: 'assets/images/speakeasyenglishlogo.png', text: 'Image 9'),
          // Add more ImageListItemWidget as needed
        ],
      ),
    );
  }
}

class ImageListItemWidget extends StatelessWidget {
  final String image;
  final String text;

  ImageListItemWidget({required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.asset(
            image,
            height: 60.0,
            width: 60.0,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 4.0),
          Text(text),
        ],
      ),
    );
  }
}

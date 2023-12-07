import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: PhotoPage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.purple,
        width: 400,
        height: 600,
        child: CustomImageButton(
            height: 200,
            backgroundImage:
                "https://www.thoughtco.com/thmb/afeWP0VLyxBFrzS_s2D-C7V2PjE=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/abstract-paper-flower-pattern-656688606-5acfba2eae9ab80038461ca0.jpg",
            color: Colors.orange,
            buttonText: "Fruits",
            imageWidget1: const Icon(Icons.add_photo_alternate),
            onPressed: () {}),
      ),
    );
  }
}

class CustomImageButton extends StatelessWidget {
  final double height;
  final String backgroundImage;
  final Color color;
  final String buttonText;
  final Widget imageWidget1;
  final Widget? imageWidget2;
  final double? image2Size;
  final VoidCallback onPressed;

  CustomImageButton({
    required this.height,
    required this.backgroundImage,
    required this.color,
    required this.buttonText,
    required this.imageWidget1,
    this.imageWidget2,
    this.image2Size,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed, hoverColor: Colors.teal,
      splashColor: Colors.amber, // Set the splash color to transparent
      highlightColor:
          Colors.lightGreen, // Set the highlight color to transparent
      child: Container(
        height: height,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.pink,
            width: 5,
          ),
          color: color,
          borderRadius:
              BorderRadius.circular(10.0), // Adjust the radius as needed
          image: DecorationImage(
            image: NetworkImage(backgroundImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  imageWidget1,
                  SizedBox(width: 8.0), // Adjust spacing as needed
                  if (imageWidget2 != null)
                    SizedBox(
                      width: image2Size ?? 30.0,
                      height: image2Size ?? 30.0,
                      child: imageWidget2!,
                    ),
                ],
              ),
              SizedBox(height: 8.0), // Adjust spacing as needed
              Text(
                buttonText,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ----------------------------

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color.fromARGB(255, 83, 1, 28), // Dark Maroon Background
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.8,
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.8 * 0.8,
          decoration: BoxDecoration(
            color: Colors.yellowAccent, // Pastel Yellow Container
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Logo Widget
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.teal,
                ),
                child: Icon(
                  Icons.android,
                  color: Colors.white,
                  size: 40,
                ),
              ),
              // Contained Text Button Widget
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Add your button functionality here
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.teal, // Dark Teal Button Color
                  ),
                  child: Text(
                    'CONTINUE',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.yellowAccent, // Pastel Yellow Text Color
                    ),
                  ),
                ),
              ),
              // Outlined Text Button Widget
              Container(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    // Add your button functionality here
                  },
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      width: 3, // Thickest Outline Width
                      color: Colors.teal, // Dark Teal Outline Color
                    ),
                  ),
                  child: Text(
                    'GET PRO',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.teal, // Dark Teal Text Color
                    ),
                  ),
                ),
              ),
              // Paragraph Widget
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: const Text(
                  'This is a sample paragraph.\nIt can have multiple lines.\nMake sure to customize it!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromARGB(
                        255, 83, 1, 28), // Dark Maroon Text Color
                    fontSize: 12, // Very Small Text Size
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ----------------------------

class HomePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 128, 0, 30),
                  Color.fromARGB(255, 245, 72, 130),
                ], // Dark to light maroon
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
                child: Image.asset(
                  'assets/images/speakeasyenglishlogo.png', // Replace with your logo image
                  height: 80,
                  width: 80,
                ),
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: Colors.lime[300],
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      spreadRadius: 5,
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(
                          'SPEAK EASY ENGLISH',
                          style: TextStyle(
                            color: Color.fromARGB(255, 128, 0, 17),
                            fontSize: 24,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Malayalam to English',
                          style: TextStyle(
                            color: Colors.teal[600],
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Column(
                      children: [
                        CustomeOutlinedButton(btnText: "BEGINNER"),
                        CustomeOutlinedButton(btnText: "INTERMEDIATE"),
                        CustomeOutlinedButton(btnText: "ADVANCED"),
                        SizedBox(height: 8),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 128, 0,
                                17), // Same color as CONTINUE button
                          ),
                          child: Text(
                            'GET PRO',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.lime[300],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Your sample paragraph text here. Your sample paragraph text here. Your sample paragraph text here.',
                        style: TextStyle(
                          color: Colors.teal[600],
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomeOutlinedButton extends StatelessWidget {
  final String btnText;
  const CustomeOutlinedButton({
    super.key,
    required this.btnText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          side: BorderSide(
            color: Color.fromARGB(255, 128, 0, 17),
            width: 3,
          ),
        ),
        child: Text(
          btnText,
          style: TextStyle(
            fontWeight: FontWeight.w900,
            color: Color.fromARGB(255, 128, 0, 17),
          ),
        ),
      ),
    );
  }
}

//  Color.fromARGB(255, 128, 0, 17)

// ______________________________________________

// class BeginnerPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Beginner Page'),
//         backgroundColor: Color(0xFF800000), // Maroon shade
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // INTRODUCTION Section
//             _buildSectionTitle("INTRODUCTION"),
//             _buildIntroductionContent(),
//             _buildKnowledgeButton(),

//             // LEVELS Section
//             _buildSectionTitle("LEVELS"),
//             _buildContentText(
//               "Select the level you want to practice with words.",
//               visibility: 0.5,
//             ),
//             _buildLevelButtons(),

//             // SAMPLES Section
//             _buildSectionTitle("SAMPLES"),
//             _buildContentText(
//               "You can practice with sample items.",
//               visibility: 0.5,
//             ),
//             _buildImgBtnListView(),

//             // CHALLENGE Section
//             _buildSectionTitle("CHALLENGE"),
//             _buildContentText(
//               "Practice new English words.",
//               visibility: 0.5,
//             ),
//             _buildChallengeListView(),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildSectionTitle(String title) {
//     return Padding(
//       padding: EdgeInsets.only(top: 16.0, bottom: 8.0),
//       child: Text(
//         title,
//         style: TextStyle(
//             fontSize: 24.0,
//             fontWeight: FontWeight.bold,
//             color: Color(0xFF800000)),
//       ),
//     );
//   }

//   Widget _buildSubTitle(String title) {
//     return Padding(
//       padding: EdgeInsets.only(top: 12.0, bottom: 4.0),
//       child: Text(
//         title,
//         style: TextStyle(
//             fontSize: 20.0,
//             fontWeight: FontWeight.bold,
//             color: Color(0xFF009688)),
//       ),
//     );
//   }

//   Widget _buildIntroductionContent() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         _buildContentText(
//           "Understand what a beginner is and how to study in the Speak Easy English app. "
//           "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
//           "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.",
//           visibility: 1.0,
//         ),
//       ],
//     );
//   }

//   Widget _buildContentText(String text, {double visibility = 1.0}) {
//     return Opacity(
//       opacity: visibility,
//       child: Text(
//         text,
//         style: TextStyle(fontSize: 16.0, color: Colors.black87),
//       ),
//     );
//   }

//   Widget _buildKnowledgeButton() {
//     return SizedBox(
//       width: double.infinity,
//       child: OutlinedButton(
//         onPressed: () {
//           // Handle button click
//         },
//         style: OutlinedButton.styleFrom(
//           side: BorderSide(color: Color(0xFF8BC34A)), // Lime shade
//           shape:
//               RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
//         ),
//         child: Text('KNOWLEDGE'),
//       ),
//     );
//   }

//   Widget _buildLevelButtons() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       children: [
//         _buildOutlinedButton("SINGLE"),
//         _buildOutlinedButton("DOUBLE"),
//         _buildOutlinedButton("TRIPLE"),
//       ],
//     );
//   }

//   Widget _buildOutlinedButton(String text) {
//     return OutlinedButton(
//       onPressed: () {
//         // Handle button click
//       },
//       style: OutlinedButton.styleFrom(
//         side: BorderSide(color: Color(0xFF009688)), // Teal shade
//         shape:
//             RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
//       ),
//       child: Text(
//         text,
//         style: TextStyle(color: Color(0xFF009688)), // Teal shade
//       ),
//     );
//   }

//   Widget _buildImgBtnListView() {
//     // Sample images
//     final btnBgImg = Image.network('https://via.placeholder.com/150',
//         width: 80.0, height: 80.0);
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Row(
//         children: List.generate(
//           5, // Replace with the desired count
//           (index) => _buildCustomImgBtn(btnBgImg, 'Image $index'),
//         ),
//       ),
//     );
//   }

//   Widget _buildCustomImgBtn(Image btnBgImg, String imgBtnText) {
//     return Container(
//       margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10.0),
//         border: Border.all(color: Color(0xFF800000)), // Maroon shade
//       ),
//       child: Column(
//         children: [
//           Container(
//             width: 100.0,
//             height: 100.0,
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                   image: NetworkImage('https://via.placeholder.com/150')),
//               borderRadius: BorderRadius.circular(10.0),
//             ),
//             // child: btnBgImg,
//           ),
//           if (imgBtnText != null) Text(imgBtnText),
//         ],
//       ),
//     );
//   }

//   Widget _buildChallengeListView() {
//     return ListView.builder(
//       shrinkWrap: true,
//       itemCount: 3, // Replace with the desired count
//       itemBuilder: (context, index) {
//         return Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             _buildSubTitle("Challenge ${index + 1}"),
//             _buildImgBtnListView(),
//           ],
//         );
//       },
//     );
//   }
// }

// ---------------------------------------------------

class KnowledgePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Development'),
        backgroundColor: Colors.teal, // Teal color for app bar
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SELF INTRODUCE SECTION
            SectionWidget(
              title: 'SELF INTRODUCE',
              children: [
                ContentTextWidget(
                  text:
                      "സ്വയം പരിചയപ്പെടുത്തുക: സ്വന്തം കുറിപ്പ് ഇങ്ങനെയാണ്...",
                ),
                TextFieldWithMicWidget(),
              ],
            ),

            // SPEAK WORDS SECTION
            SectionWidget(
              title: 'SPEAK WORDS',
              children: [
                // Malayalam Subsection
                SubSectionWidget(
                  title: 'Malayalam',
                  color: Color(0xFF8E354A), // Maroon shade
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
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.0),
        ...children,
        SizedBox(height: 16.0),
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
      margin: EdgeInsets.symmetric(vertical: 8.0),
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 8.0),
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
      style: TextStyle(fontSize: 16.0),
    );
  }
}

class TextFieldWithMicWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Type here...',
            ),
          ),
        ),
        IconButton(
          icon: Icon(Icons.mic),
          onPressed: () {
            // Handle mic button press
          },
        ),
      ],
    );
  }
}

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
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.asset(
            image,
            height: 60.0,
            width: 60.0,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 4.0),
          Text(text),
        ],
      ),
    );
  }
}

// ----------------------------------------------------

class SamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> yourImageList = [
      "assets/images/speakeasyenglishlogo.png",
      "assets/images/speakeasyenglishlogo.png",
      "assets/images/speakeasyenglishlogo.png",
    ];
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.network(
              'https://previews.123rf.com/images/kovalnadiya/kovalnadiya1906/kovalnadiya190600084/125525575-mango-tropical-fruit-on-a-dark-wooden-background-flat-lay-place-for-text-food-concept-vertical-image.jpg',
              fit: BoxFit.cover,
            ),
          ),

          // ImageListView
          Positioned(
            top: 50.0, // Adjust as needed
            left: 0,
            right: 0,
            child: Container(
              height: 150.0, // Adjust as needed
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: yourImageList.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 40, height: 70,
                    margin: EdgeInsets.only(right: 16.0), // Adjust spacing
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage(yourImageList[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Additional content for each item if needed
                  );
                },
              ),
            ),
          ),

          // WordText
          Positioned(
            left: 0,
            right: 0,
            bottom: 56.0,
            child: Text(
              'Image Name',textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
          ),

          // VolumeButton
          Positioned(
            left: 16.0,
            bottom: 16.0,
            child: IconButton(
              icon: Icon(Icons.volume_up),
              onPressed: () {
                // Add your volume button functionality here
              },
            ),
          ),

          // MicButton
          Positioned(
            left: 0,
            right: 0,
            bottom: 16.0,
            child: IconButton(
              icon: Icon(Icons.mic),
              onPressed: () {
                // Add your mic button functionality here
              },
            ),
          ),

          // AutoMicButton
          Positioned(
            right: 16.0,
            bottom: 16.0,
            child: IconButton(
              icon: Icon(Icons.mic_off), // Change icon as needed
              onPressed: () {
                // Add your auto mic button functionality here
              },
            ),
          ),
        ],
      ),
    );
  }
}


// ---------------------
// ---------------------


class ConnectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Abdulla's name
            Text(
              'Abdulla',
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            // Flutter Developer
            Text(
              'Flutter Developer',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey,
              ),
            ),

            // Connect Section
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Contact Information
                  Text(
                    'Contact me:',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Malappuram, Kerala',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Email: abdullacforu@gmail.com',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                  ),

                  // Icons for Contact Information
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.mail, color: Colors.black),
                      SizedBox(width: 10.0),
                      Icon(Icons.location_on, color: Colors.black),
                    ],
                  ),
                ],
              ),
            ),

            // Message Me Section
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              child: Column(
                children: [
                  // Text Fields for Message
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Name',
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Contact Number',
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Message',
                    ),
                  ),

                  // Submit Button
                  SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () {
                      // Add code to handle form submission
                    },
                    child: Text('Submit'),
                  ),
                ],
              ),
            ),

            // Additional widgets or sections can be added here

          ],
        ),
      ),
    );
  }
}

// -----------------------------
// ----------------------------


class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Abdulla's name
            Text(
              'Abdulla',
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            // Flutter Developer
            Text(
              'Flutter Developer',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey,
              ),
            ),

            // About Section
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                'As a self-taught Flutter developer, I have honed my skills in creating cross-platform applications for various devices. My journey involves crafting responsive applications and earning extensive technology-based knowledge through the development of numerous interesting apps. I am passionate about building innovative applications that contribute to the world of technology.',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
            ),

            // Additional widgets or sections can be added here

          ],
        ),
      ),
    );
  }
}


// -------------------------
// --------------------------


class HomePage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // About Section
              Container(
                margin: EdgeInsets.only(bottom: 20.0),
                child: Text(
                  'As a passionate Flutter developer, I specialize in creating cross-platform applications that are not only responsive but also innovative. My journey as a self-taught developer has equipped me with a wealth of technology-based knowledge, gained through the creation of several intriguing apps. I am enthusiastic about building applications that cater to various devices.',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                    // Add other text styling properties as needed
                  ),
                ),
              ),
        
              // Portfolio Section
              Container(
                margin: EdgeInsets.only(top: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Portfolio',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        // Add other text styling properties as needed
                      ),
                    ),
                    SizedBox(height: 10.0),
        
                    // Netflix App Clone
                    PortfolioItem(
                      title: 'Netflix App Clone',
                      imageUrl: 'URL_TO_NETFLIX_APP_SCREENSHOT',
                    ),
        
                    // YouTube App Clone
                    PortfolioItem(
                      title: 'YouTube App Clone',
                      imageUrl: 'URL_TO_YOUTUBE_APP_SCREENSHOT',
                    ),
        
                    // Spoken English App
                    PortfolioItem(
                      title: 'Spoken English App',
                      imageUrl: 'URL_TO_ENGLISH_APP_SCREENSHOT',
                    ),
                  ],
                ),
              ),
        
              // Additional widgets or sections can be added here
        
            ],
          ),
        ),
      ),
    );
  }
}

class PortfolioItem extends StatelessWidget {
  final String title;
  final String imageUrl;

  PortfolioItem({required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10.0),

        // Portfolio Item Title
        Text(
          title,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            // Add other text styling properties as needed
          ),
        ),

        // Portfolio Item Screenshot
        Container(
          margin: EdgeInsets.symmetric(vertical: 10.0),
          height: 150.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}


// --------------------------------------
// -----------------------------------

class HomePage5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Abdulla's name
            Text(
              'Abdulla',
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                // Add other text styling properties as needed
              ),
            ),

            // Flutter Developer
            Text(
              'Flutter Developer',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey,
                // Add other text styling properties as needed
              ),
            ),

            // Quote
            Text(
              'Your inspiring quote here',
              style: TextStyle(
                fontSize: 16.0,
                fontStyle: FontStyle.italic,
                color: Colors.black,
                // Add other text styling properties as needed
              ),
            ),

            // Sample Photo
            Container(
              margin: EdgeInsets.symmetric(vertical: 16.0),
              height: 200.0,
              width: 200.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage('URL_TO_YOUR_SAMPLE_PHOTO'),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // Additional widgets or sections can be added here

          ],
        ),
      ),
    );
  }
}


// -------------------------------------------------------
// -------------------------------------------------------



class HomePage6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Abdulla\'s Website'),
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              // Add code for drawer open
            },
          ),
          IconButton(
            icon: Icon(Icons.link),
            onPressed: () {
              // Add code to go to LinkedIn website
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('Home'),
              onTap: () {
                // Add code to navigate to Home section
              },
            ),
            ListTile(
              title: Text('About'),
              onTap: () {
                // Add code to navigate to About section
              },
            ),
            // Add similar ListTile for other sections
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Home Section
            Container(
              // Add styling properties as needed (padding, margin, color, etc.)
              child: Column(
                children: [
                  Text(
                    'Abdulla',
                    style: TextStyle(
                      // Add text styling properties (fontFamily, fontWeight, etc.)
                    ),
                  ),
                  Text(
                    'Welcome words and profession',
                    style: TextStyle(
                      // Add text styling properties
                    ),
                  ),
                  // Add your photo here with appropriate styling
                ],
              ),
            ),

            // About Section
            Container(
              // Add styling properties
              child: Text(
                'Your about text or content',
                style: TextStyle(
                  // Add text styling properties
                ),
              ),
            ),

            // Portfolio Section
            // You can use a GridView for the portfolio items with images/screenshots

            // Ethics Section
            Container(
              // Add styling properties
              child: Text(
                'Your work ethics content',
                style: TextStyle(
                  // Add text styling properties
                ),
              ),
            ),

            // Skills Section
            // Use a GridView for skills with images/logos and skill names

            // Hire Me Section
            Container(
              // Add styling properties
              child: Column(
                children: [
                  Text(
                    'I want a job as a Flutter developer',
                    style: TextStyle(
                      // Add text styling properties
                    ),
                  ),
                  // Add icons and button for 'HIRE ME'
                ],
              ),
            ),

            // Connect Section
            Container(
              // Add styling properties
              child: Column(
                children: [
                  Text(
                    'Contact me:',
                    style: TextStyle(
                      // Add text styling properties
                    ),
                  ),
                  // Add your contact information and icons
                ],
              ),
            ),

            // Message Me Section
            // Add text fields, contact number, email, message, and submit button

            // Footer Section
            Container(
              // Add styling properties
              child: Text(
                'Created by Me, Copyright 2023 All rights reserved',
                style: TextStyle(
                  // Add text styling properties
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add code to scroll to the Home section
        },
        child: Icon(Icons.arrow_upward),
      ),
    );
  }
}


// -
// ----

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat with Friend'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                // Chat messages go here
                _buildMessage('Friend', 'Hello!'),
                _buildMessage('User', 'Hi there!'),
                // Add more messages as needed
              ],
            ),
          ),
          _buildInputArea(),
        ],
      ),
    );
  }

  Widget _buildMessage(String sender, String message) {
    return ListTile(
      title: Text(message),
      subtitle: Text(sender),
      // Customize styling as needed
    );
  }

  Widget _buildInputArea() {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: [
          // Clear button
          IconButton(
            icon: Icon(Icons.clear),
            onPressed: () {
              _messageController.clear();
            },
          ),
          // Text field
          Expanded(
            child: TextField(
              controller: _messageController,
              decoration: InputDecoration(
                hintText: 'Type a message',
              ),
            ),
          ),
          // Send button
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () {
              // Handle send button press
              String message = _messageController.text;
              // Send the message or perform any other action
              print('Sending message: $message');
            },
          ),
          // Mic icon button
          IconButton(
            icon: Icon(Icons.mic),
            onPressed: () {
              // Handle mic button press
              print('Mic button pressed');
            },
          ),
          // Volume on/off button
          IconButton(
            icon: Icon(Icons.volume_up),
            onPressed: () {
              // Handle volume button press
              print('Volume button pressed');
            },
          ),
        ],
      ),
    );
  }
}


// -----
// ---------


class ChatScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat with Friend'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                // Chat messages go here
                // You can use ListTile or other widgets to display messages
              ],
            ),
          ),
          Divider(height: 1.0),
          Container(
            decoration: BoxDecoration(color: Theme.of(context).cardColor),
            child: _buildTextComposer(),
          ),
        ],
      ),
    );
  }

  Widget _buildTextComposer() {
    return IconTheme(
      data: IconThemeData(color: Colors.red),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            // Mic icon button
            IconButton(
              icon: Icon(Icons.mic),
              onPressed: () {
                // Handle mic button press
              },
            ),
            Expanded(
              child: TextField(
                onChanged: (text) {
                  // Handle text input changes
                },
                onSubmitted: (text) {
                  // Handle text submitted
                },
                decoration: InputDecoration.collapsed(
                  hintText: 'Send a message',
                ),
              ),
            ),
            // Send button
            IconButton(
              icon: Icon(Icons.send),
              onPressed: () {
                // Handle send button press
              },
            ),
            // Volume on/off button
            IconButton(
              icon: Icon(Icons.volume_up),
              onPressed: () {
                // Handle volume button press
              },
            ),
          ],
        ),
      ),
    );
  }
}


// ---------------
// -----------




class PhotoPage extends StatelessWidget {
  final String photoUrl =
      'https://raw.githubusercontent.com/abdullac/personalWebsiteAbdulla/main/assets/MyphotoBig.webp';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Photo Page'),
      ),
      body: Center(
        child: CachedNetworkImage(
          imageUrl: photoUrl,
          placeholder: (context, url) => CircularProgressIndicator(),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
      ),
    );
  }
}
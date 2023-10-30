import 'package:flutter/material.dart';
import 'package:my_first_website/widgets/body/round_image.dart';
import 'package:my_first_website/widgets/body/text_info.dart';
import 'package:my_first_website/widgets/body/square_image.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const TextInfo(titleText: 'WELCOME', bodyText: 'My name is Gustavo Ramos, I am a 26-year-old Product Manager and Flutter Developer.'),
          const SizedBox(height: 20),
          const RoundImage(customAsset: 'assets/images/new-gustavo-profile.jpg'),
          const SizedBox(height: 50),
          const TextInfo(
            titleText: 'CAREER',
            bodyText: 'I worked in business roles for 4 years, starting in Inside Sales and then moving to Customer Success.',
          ),
          const SizedBox(height: 20),
          const SquareImage(
            customAsset: 'assets/images/coblue-event.jpg',
            customSemanticLabel: 'Flutter logo',
            customPadding: 0,
            imageHeight: 210,
            imageWidth: 280,
          ),
          const SizedBox(height: 50),
          const TextInfo(
              titleText: 'TECH',
              bodyText: 'After working closely with Designers and Developers as a Product Manager, I decided to move definitively to tech.'),
          const SizedBox(height: 20),
          SquareImage(
            customAsset: 'assets/images/flutter-white.png',
            customSemanticLabel: 'Flutter logo',
            customBackgroundColor: Colors.lightBlue.shade50,
            customPadding: 10,
            imageHeight: 120,
            imageWidth: 200,
          ),
        ],
      ),
    );
  }
}

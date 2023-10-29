import 'package:flutter/material.dart';
import 'package:my_first_website/widgets/body/round_image.dart';
import 'package:my_first_website/widgets/body/square_image.dart';
import '../../widgets/body/text_info.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextInfo(
                      titleText: 'WELCOME',
                      bodyText: 'My name is Gustavo Ramos, I am a 26-year-old Flutter Developer and Product Manager.',
                    ),
                    RoundImage(customAsset: 'assets/images/new-gustavo-profile.jpg'),
                  ],
                ),
                const SizedBox(height: 70),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SquareImage(
                      customAsset: 'assets/images/coblue-event.jpg',
                      customSemanticLabel: 'Flutter logo',
                      customPadding: 0,
                      imageHeight: 210,
                      imageWidth: 280,
                    ),
                    TextInfo(
                      titleText: 'CAREER',
                      bodyText: 'I worked in business roles for 4 years, starting in Inside Sales and then moving to Customer Success.',
                    ),
                  ],
                ),
                const SizedBox(height: 70),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const TextInfo(
                        titleText: 'TECH',
                        bodyText:
                            'After working closely with Designers and Developers as a Product Manager, I decided to move definitively to tech.'),
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
              ],
            ),
          ),
        ),
      ],
    );
  }
}

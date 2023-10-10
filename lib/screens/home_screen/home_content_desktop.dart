import 'package:flutter/material.dart';
import 'package:my_first_website/widgets/body/square_image_widget.dart';
import '../../widgets/body/round_image_widget.dart';
import '../../widgets/body/info_widget.dart';

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
                    InfoWidget(titleText: 'WELCOME', bodyText: 'My name is Gustavo Ramos, I am a 26-year-old Flutter Developer and Product Manager.'),
                    HomeRoundImage(customAsset: 'assets/images/new-gustavo-profile.jpg'),
                  ],
                ),
                const SizedBox(height: 70),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    HomeSquareImage(
                      customAsset: 'assets/images/coblue-event.jpg',
                      customSemanticLabel: 'Flutter logo',
                      customBorderColor: Colors.black,
                      customPadding: 0,
                      imageHeight: 210,
                      imageWidth: 280,
                    ),
                    InfoWidget(
                        titleText: 'CAREER',
                        bodyText: 'I worked in business roles for 4 years, starting in Inside Sales and then moving to Customer Success. \nI became a manager for both teams during this time.'),
                  ],
                ),
                const SizedBox(height: 70),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const InfoWidget(
                        titleText: 'TECH.',
                        bodyText: 'By working closely with Designers and Developers as a Product Manager, I realized how much I love tech.'),
                    HomeSquareImage(
                      customAsset: 'assets/images/flutter-white.png',
                      customSemanticLabel: 'Flutter logo',
                      customBackgroundColor: Colors.lightBlue.shade50,
                      customBorderColor: Colors.lightBlue,
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
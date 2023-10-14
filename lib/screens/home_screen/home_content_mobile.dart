import 'package:flutter/material.dart';
import 'package:my_first_website/widgets/body/round_image_widget.dart';
import 'package:my_first_website/widgets/body/info_widget.dart';
import 'package:my_first_website/widgets/body/square_image_widget.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const InfoWidget(titleText: 'WELCOME', bodyText: 'My name is Gustavo Ramos, I am a 26-year-old Product Manager and Flutter Developer.'),
          const SizedBox(height: 20),
          const HomeRoundImage(customAsset: 'assets/images/new-gustavo-profile.jpg'),
          const SizedBox(height: 50),
          const InfoWidget(
            titleText: 'CAREER',
            bodyText:
                'I worked in business roles for 4 years, starting in Inside Sales and then moving to Customer Success.',
          ),
          const SizedBox(height: 20),
          const HomeSquareImage(
            customAsset: 'assets/images/coblue-event.jpg',
            customSemanticLabel: 'Flutter logo',
            customBorderColor: Colors.black,
            customPadding: 0,
            imageHeight: 210,
            imageWidth: 280,
          ),
          const SizedBox(height: 50),
          const InfoWidget(
              titleText: 'TECH.',
              bodyText: 'After working closely with Designers and Developers as a Product Manager, I decided to move definitively to tech'),
          HomeSquareImage(
            customAsset: 'assets/images/flutter-white.png',
            customSemanticLabel: 'Flutter logo',
            customBackgroundColor: Colors.lightBlue.shade50,
            customBorderColor: Colors.lightBlue.shade50,
            customPadding: 10,
            imageHeight: 120,
            imageWidth: 200,
          ),
        ],
      ),
    );
  }
}

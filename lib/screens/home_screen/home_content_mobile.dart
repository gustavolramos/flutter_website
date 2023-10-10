import 'package:flutter/material.dart';
import 'package:my_first_website/widgets/body/round_image_widget.dart';
import 'package:my_first_website/widgets/body/info_widget.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InfoWidget(titleText: 'WELCOME', bodyText: 'My name is Gustavo Ramos, I am a 26-year-old Product Manager and Flutter Developer.'),
          SizedBox(height: 50),
          HomeRoundImage(customAsset: 'assets/images/new-gustavo-profile.jpg'),
        ],
      ),
    );
  }
}
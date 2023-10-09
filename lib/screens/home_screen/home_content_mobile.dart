import 'package:flutter/material.dart';
import 'package:my_first_website/screens/home_screen/home_image.dart';
import 'package:my_first_website/screens/home_screen/home_info.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          HomeInfo(bodyText: 'My name is Gustavo Ramos, I am a 26-year-old Product Manager and Flutter Developer. This is my first Flutter-made Website.', titleText: 'WELCOME'),
          SizedBox(height: 50),
          HomeImage(customAsset: 'assets/images/gustavo-profile-photo.jpg'),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'home_image.dart';
import 'home_info.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          HomeInfo(titleText: 'WELCOME', bodyText: 'My name is Gustavo Ramos, I am a 26-year-old Product Manager and Flutter Developer. This is my first Flutter-made Website.'),
          HomeImage(customAsset: 'assets/images/gustavo-profile-photo.jp'),
        ],
      ),
    );
  }
}
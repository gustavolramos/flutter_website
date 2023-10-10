import 'package:flutter/material.dart';
import '../../widgets/body/image_widget.dart';
import '../../widgets/body/info_widget.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HomeInfo(titleText: 'WELCOME', bodyText: 'My name is Gustavo Ramos, I am a 26-year-old Flutter Developer and Product Manager.'),
              HomeImage(customAsset: 'assets/images/gustavo-profile-photo.jpg'),
            ],
          ),
        ),
      ],
    );
  }
}
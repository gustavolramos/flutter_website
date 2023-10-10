import 'package:flutter/material.dart';
import 'package:my_first_website/widgets/body/round_image_widget.dart';
import 'package:my_first_website/widgets/body/info_widget.dart';

class AboutContentDesktop extends StatelessWidget {
  const AboutContentDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InfoWidget(titleText: 'MY STORY', bodyText: 'I was born and raised in Balneário Camboriú, Brazil'),
              HomeRoundImage(customAsset: 'assets/images/hotel-bella-camboriu.jpg'),
            ],
          ),
        ),
      ],
    );
  }
}
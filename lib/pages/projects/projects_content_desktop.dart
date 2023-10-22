import 'package:flutter/material.dart';
import 'package:my_first_website/widgets/body/round_image.dart';
import 'package:my_first_website/widgets/body/text_info.dart';

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
              TextInfo(titleText: 'MY STORY', bodyText: 'I was born and raised in Balneário Camboriú, Brazil'),
              RoundImage(customAsset: 'assets/images/hotel-bella-camboriu.jpg'),
            ],
          ),
        ),
      ],
    );
  }
}

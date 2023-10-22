import 'package:flutter/material.dart';
import 'package:my_first_website/widgets/body/round_image.dart';
import 'package:my_first_website/widgets/body/text_info.dart';

class AboutContentMobile extends StatelessWidget {
  const AboutContentMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextInfo(titleText: 'MY STORY', bodyText: 'I was born and raised in Balneário Camboriú, Brazil'),
          SizedBox(height: 50),
          RoundImage(customAsset: 'assets/images/hotel-bella-camboriu.jpg'),
        ],
      ),
    );
  }
}

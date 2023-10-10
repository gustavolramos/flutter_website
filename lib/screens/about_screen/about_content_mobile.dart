import 'package:flutter/material.dart';
import 'package:my_first_website/widgets/body/round_image_widget.dart';
import 'package:my_first_website/widgets/body/info_widget.dart';

class AboutContentMobile extends StatelessWidget {
  const AboutContentMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InfoWidget(titleText: 'MY STORY', bodyText: 'I was born and raised in Balneário Camboriú, Brazil'),
          SizedBox(height: 50),
          HomeRoundImage(customAsset: 'assets/images/hotel-bella-camboriu.jpg'),
        ],
      ),
    );
  }
}
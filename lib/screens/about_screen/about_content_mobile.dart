import 'package:flutter/material.dart';
import 'package:my_first_website/widgets/body/image_widget.dart';
import 'package:my_first_website/widgets/body/info_widget.dart';

class AboutContentMobile extends StatelessWidget {
  const AboutContentMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          HomeInfo(titleText: 'MY STORY', bodyText: 'I was born and raised in Balneário Camboriú, Brazil'),
          SizedBox(height: 50),
          HomeImage(customAsset: 'assets/images/hotel-bella-camboriu.jpg'),
        ],
      ),
    );
  }
}
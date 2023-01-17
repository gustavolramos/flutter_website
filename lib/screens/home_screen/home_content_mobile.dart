import 'package:flutter/material.dart';
import 'package:my_first_website/screens/home_screen/home_image.dart';
import 'package:my_first_website/screens/home_screen/home_info.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BodyInfo(),
          SizedBox(height: 50),
          BodyImage(),
        ],
      ),
    );
  }
}

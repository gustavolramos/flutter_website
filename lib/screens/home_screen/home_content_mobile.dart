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
          HomeInfo(),
          SizedBox(height: 50),
          HomeImage(),
        ],
      ),
    );
  }
}

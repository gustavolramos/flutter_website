import 'package:flutter/material.dart';
import 'package:my_first_website/widgets/body/body_image.dart';
import 'package:my_first_website/widgets/body/body_info.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
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

import 'package:flutter/material.dart';
import '../../widgets/body/body_image.dart';
import '../../widgets/body/body_info.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: [
        BodyInfo(),
        BodyImage(),
      ],
    );
  }
}

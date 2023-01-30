import 'package:flutter/material.dart';
import 'home_image.dart';
import 'home_info.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          HomeInfo(),
          HomeImage(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HomeImage extends StatelessWidget {
  const HomeImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          CircleAvatar(
            backgroundImage:
                AssetImage('assets/images/gustavo-profile-photo.jpg'),
            radius: 125,
          ),
        ]);
  }
}

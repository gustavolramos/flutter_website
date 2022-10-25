import 'package:flutter/material.dart';

class BodyImage extends StatelessWidget {
  const BodyImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/gustavo_profile_photo.jpg'),
            radius: 125,
          ),
        ]
    );
  }
}

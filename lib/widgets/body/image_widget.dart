import 'package:flutter/material.dart';

class HomeImage extends StatelessWidget {
  const HomeImage({super.key, required this.customAsset});

  final String customAsset;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage(customAsset),
      radius: 125,
    );
  }
}

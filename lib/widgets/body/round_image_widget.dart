import 'package:flutter/material.dart';

class HomeRoundImage extends StatelessWidget {
  const HomeRoundImage({super.key, required this.customAsset});

  final String customAsset;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 120,
      child: ClipOval(
        child: Image.asset(
          customAsset,
          fit: BoxFit.cover,
          width: 235,
          height: 235,
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class RoundImage extends StatelessWidget {
  const RoundImage({super.key, required this.customAsset});

  final String customAsset;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.black,
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
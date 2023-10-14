import 'package:flutter/material.dart';
import 'package:my_first_website/utils/navigation.dart';

class SocialMediaIcon extends StatelessWidget {
  SocialMediaIcon({super.key, required this.url, required this.assetLocation, required this.iconSize});

  final String url;
  final String assetLocation;
  final double? iconSize;
  final UrlLauncher urlLauncher = UrlLauncher();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async => await urlLauncher.launchUrlMethod(Uri.parse(url)),
      icon: Image.asset(assetLocation),
      iconSize: iconSize,
    );
  }
}
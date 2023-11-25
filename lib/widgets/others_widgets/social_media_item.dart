import 'package:flutter/material.dart';
import 'package:my_first_website/utils/url_launcher.dart';

class SocialMediaItem extends StatelessWidget {
  SocialMediaItem({super.key, required this.url, required this.assetLocation});

  final String url;
  final String assetLocation;
  final UrlLauncher urlLauncher = UrlLauncher();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: 48,
      child: IconButton(
        onPressed: () async => await urlLauncher.launchUrlMethod(Uri.parse(url)),
        icon: Image.asset(assetLocation),
      ),
    );
  }
}

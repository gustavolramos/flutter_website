import 'package:flutter/material.dart';
import 'package:my_first_website/utils/url_launcher.dart';
import 'package:my_first_website/widgets/navigation_bar/social_media_item.dart';

class NavigationDrawerHeader extends StatelessWidget {
  NavigationDrawerHeader({Key? key}) : super(key: key);

  final UrlLauncher urlLauncher = UrlLauncher();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: DrawerHeader(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: const BoxDecoration(color: Colors.lightBlue),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SocialMediaItem(
              url: 'https://github.com/gustavolramos',
              assetLocation: 'assets/images/logo-github-white.png',
              iconSize: 40,
            ),
            SocialMediaItem(
              url: 'https://www.linkedin.com/in/gustavo-ramos/',
              assetLocation: 'assets/images/logo-linkedin-square.png',
              iconSize: 45,
            ),
            SocialMediaItem(
              url: 'https://www.instagram.com/gustavolramos/',
              assetLocation: 'assets/images/logo-instagram.png',
              iconSize: 40,
            ),
            SocialMediaItem(
              url: 'https://twitter.com/gustavolramos',
              assetLocation: 'assets/images/logo-x-white.png',
              iconSize: 30,
            ),
          ],
        ),
      ),
    );
  }
}
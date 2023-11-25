import 'package:flutter/material.dart';
import 'package:my_first_website/utils/url_launcher.dart';
import 'package:my_first_website/widgets/others_widgets/social_media_item.dart';

class CustomPopUpMenu extends StatefulWidget {
  const CustomPopUpMenu({super.key});

  @override
  State<CustomPopUpMenu> createState() => _CustomPopUpMenuState();
}

class _CustomPopUpMenuState extends State<CustomPopUpMenu> {
  UrlLauncher urlLauncher = UrlLauncher();

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      position: PopupMenuPosition.under,
      itemBuilder: (context) => <PopupMenuEntry<Widget>>[
        PopupMenuItem(
          onTap: () async => await urlLauncher.launchUrlMethod(Uri.parse('https://github.com/gustavolramos')),
          child: Row(
            children: [
              SocialMediaItem(
                url: 'https://github.com/gustavolramos',
                assetLocation: 'assets/images/logo-github-dark.png',
              ),
              const Text('Github'),
            ],
          ),
        ),
        PopupMenuItem(
          onTap: () async => await urlLauncher.launchUrlMethod(Uri.parse('https://www.linkedin.com/in/gustavo-ramos/')),
          child: Row(
            children: [
              SocialMediaItem(
                url: 'https://www.linkedin.com/in/gustavo-ramos/',
                assetLocation: 'assets/images/logo-linkedin-square.png',
              ),
              const Text('Linkedin'),
            ],
          ),
        ),
        PopupMenuItem(
          onTap: () async => await urlLauncher.launchUrlMethod(Uri.parse('https://www.instagram.com/gustavolramos/')),
          child: Row(
            children: [
              SocialMediaItem(
                url: 'https://www.instagram.com/gustavolramos/',
                assetLocation: 'assets/images/logo-instagram.png',
              ),
              const Text('Instagram'),
            ],
          ),
        ),
        PopupMenuItem(
          onTap: () async => await urlLauncher.launchUrlMethod(Uri.parse('https://twitter.com/gustavolramos')),
          child: Row(
            children: [
              SocialMediaItem(
                url: 'https://twitter.com/gustavolramos',
                assetLocation: 'assets/images/logo-x-black.png',
              ),
              const Text('Twitter'),
            ],
          ),
        ),
      ],
      child: Text(
        'Social Media',
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}

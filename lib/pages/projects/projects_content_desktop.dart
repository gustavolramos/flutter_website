import 'package:flutter/material.dart';
import 'package:my_first_website/widgets/others_widgets/grid_item.dart';
import 'package:my_first_website/widgets/body/square_image.dart';
import 'package:my_first_website/widgets/body/text_info.dart';

class ProjectsContentDesktop extends StatelessWidget {
  const ProjectsContentDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      crossAxisCount: 3,
      childAspectRatio: 2,
      children: [
        GridItem(
          squareImage: const SquareImage(
            customAsset: 'assets/images/logo_full_red_bag.png',
            customPadding: 20,
            imageHeight: 100,
            imageWidth: 100,
          ),
          url: 'https://github.com/jsappsbr/Economiza-SC',
          textInfo: const TextInfo(
            titleText: 'Economiza SC',
            bodyText: 'This supermarket app compares prices to help customers save money',
            desktopTitleSize: 30, desktopDescriptionSize: 15,
          ),
        ),
        GridItem(
          squareImage: const SquareImage(
            customAsset: 'assets/images/logo_calculator.png',
            customPadding: 20,
            imageHeight: 100,
            imageWidth: 100,
          ),
          url: 'https://github.com/gustavolramos/flutter_tcg_calculator',
          textInfo: const TextInfo(
            titleText: 'TCG Calculator',
            bodyText: 'This app let\'s you build a deck of cards and calculate probabilities',
            desktopTitleSize: 30, desktopDescriptionSize: 15,
          ),
        ),
        GridItem(
          squareImage: const SquareImage(
            customAsset: 'assets/images/logo_translate_app.jpg',
            customPadding: 20,
            imageHeight: 100,
            imageWidth: 100,
          ),
          url: 'https://github.com/gustavolramos/flutter_language_translation_app',
          textInfo: const TextInfo(
            titleText: 'Language Translation',
            bodyText: 'This app is a Google Translate clone',
            desktopTitleSize: 30, desktopDescriptionSize: 15,
          ),
        ),
        GridItem(
          squareImage: const SquareImage(
            customAsset: 'assets/images/logo_riverpod.png',
            customPadding: 20,
            imageHeight: 100,
            imageWidth: 100,
          ),
          url: 'https://github.com/gustavolramos/riverpod_user_list',
          textInfo: const TextInfo(
            titleText: 'Riverpod Userlist',
            bodyText: 'This one communicates with an API to show a list of users, and their details.',
            desktopTitleSize: 30, desktopDescriptionSize: 15,
          ),
        ),
        GridItem(
          squareImage: const SquareImage(
            customAsset: 'assets/images/green_dog_cartoon.jpg',
            customPadding: 20,
            imageHeight: 100,
            imageWidth: 100,
          ),
          url: 'https://github.com/gustavolramos/flutter_dog_travel_permission',
          textInfo: const TextInfo(
            titleText: 'Dog Travel Permission',
            bodyText: 'In order to know which airline companies accept my dogs, I made this mini-app',
            desktopTitleSize: 30, desktopDescriptionSize: 15,
          ),
        ),
      ],
    );
  }
}

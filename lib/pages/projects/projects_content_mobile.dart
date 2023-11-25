import 'package:flutter/material.dart';
import 'package:my_first_website/utils/url_launcher.dart';
import 'package:my_first_website/widgets/body/square_image.dart';
import 'package:my_first_website/widgets/body/text_info.dart';

class ProjectsContentMobile extends StatelessWidget {
  ProjectsContentMobile({Key? key}) : super(key: key);

  final UrlLauncher urlLauncher = UrlLauncher();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
                    Padding(
            padding: const EdgeInsets.fromLTRB(0, 8, 0, 20),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SquareImage(
                      customAsset: 'assets/images/logo_full_red_bag.png',
                      customPadding: 10,
                      imageWidth: 100,
                      imageHeight: 100,
                    ),
                    ElevatedButton(
                        onPressed: () async => await urlLauncher.launchUrlMethod(
                              Uri.parse('https://github.com/jsappsbr/Economiza-SC'),
                            ),
                        child: const Row(
                          children: [
                            Icon(Icons.ads_click),
                            SizedBox(width: 5),
                            Text('Repo'),
                          ],
                        )),
                  ],
                ),
                const Expanded(
                    child: TextInfo(
                  titleText: 'Economiza SC',
                  bodyText: 'This supermarket app compares prices to help customers save money',desktopTitleSize: 60, desktopDescriptionSize: 15,
                )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 8, 0, 20),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SquareImage(
                      customAsset: 'assets/images/logo_calculator.png',
                      customPadding: 10,
                      imageWidth: 100,
                      imageHeight: 100,
                    ),
                    ElevatedButton(
                        onPressed: () async => await urlLauncher.launchUrlMethod(
                              Uri.parse('https://github.com/gustavolramos/flutter_tcg_calculator'),
                            ),
                        child: const Row(
                          children: [
                            Icon(Icons.ads_click),
                            SizedBox(width: 5),
                            Text('Repo'),
                          ],
                        )),
                  ],
                ),
                const Expanded(
                    child: TextInfo(
                  titleText: 'TCG Calculator',
                  bodyText: 'This app let\'s you build a deck of cards and calculate probabilities',desktopTitleSize: 60, desktopDescriptionSize: 15,
                )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SquareImage(
                      customAsset: 'assets/images/logo_translate_app.jpg',
                      customPadding: 10,
                      imageWidth: 100,
                      imageHeight: 100,
                    ),
                    ElevatedButton(
                        onPressed: () async => await urlLauncher.launchUrlMethod(
                              Uri.parse('https://github.com/gustavolramos/flutter_language_translation_app'),
                            ),
                        child: const Row(
                          children: [
                            Icon(Icons.ads_click),
                            SizedBox(width: 5),
                            Text('Repo'),
                          ],
                        )),
                  ],
                ),
                const Expanded(
                    child: TextInfo(
                  titleText: 'Language Translation',
                  bodyText: 'This app is a Google Translate clone',desktopTitleSize: 60, desktopDescriptionSize: 15,
                )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SquareImage(
                      customAsset: 'assets/images/logo_riverpod.png',
                      customPadding: 10,
                      imageWidth: 100,
                      imageHeight: 100,
                    ),
                    ElevatedButton(
                        onPressed: () async => await urlLauncher.launchUrlMethod(
                              Uri.parse('https://github.com/gustavolramos/riverpod_user_list'),
                            ),
                        child: const Row(
                          children: [
                            Icon(Icons.ads_click),
                            SizedBox(width: 5),
                            Text('Repo'),
                          ],
                        )),
                  ],
                ),
                const Expanded(
                    child: TextInfo(
                  titleText: 'Riverpod Userlist',
                  bodyText: 'This one communicates with an API to show a list of users, and their details.',desktopTitleSize: 60, desktopDescriptionSize: 15,
                )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SquareImage(
                      customAsset: 'assets/images/green_dog_cartoon.jpg',
                      customPadding: 10,
                      imageWidth: 100,
                      imageHeight: 100,
                    ),
                    ElevatedButton(
                        onPressed: () async => await urlLauncher.launchUrlMethod(
                              Uri.parse('https://github.com/gustavolramos/flutter_dog_travel_permission'),
                            ),
                        child: const Row(
                          children: [
                            Icon(Icons.ads_click),
                            SizedBox(width: 5),
                            Text('Repo'),
                          ],
                        )),
                  ],
                ),
                const Expanded(
                    child: TextInfo(
                  titleText: 'Dog Travel Permission',
                  bodyText: 'In order to know which airline companies accept my dogs, I made this mini-app',desktopTitleSize: 60, desktopDescriptionSize: 15,
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

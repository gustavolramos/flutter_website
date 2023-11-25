import 'package:flutter/material.dart';
import 'package:my_first_website/utils/url_launcher.dart';
import 'package:my_first_website/widgets/body/square_image.dart';
import 'package:my_first_website/widgets/body/text_info.dart';

class GridItem extends StatelessWidget {
  GridItem({super.key, required this.squareImage, required this.url, required this.textInfo});

  final SquareImage squareImage;
  final TextInfo textInfo;
  final String url;
  final UrlLauncher urlLauncher = UrlLauncher();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(color: Colors.grey.shade200, borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                squareImage,
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith((_) => Colors.white),
                        iconColor: MaterialStateColor.resolveWith((_) => Colors.blue)),
                    onPressed: () async => await urlLauncher.launchUrlMethod(Uri.parse(url)),
                    child: Row(
                      children: [
                        const Icon(Icons.ads_click),
                        const SizedBox(width: 5),
                        Text('Repo', style: Theme.of(context).textTheme.titleMedium,),
                      ],
                    )),
              ],
            ),
            Expanded(child: textInfo)
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TextInfo extends StatelessWidget {
  const TextInfo({super.key, required this.titleText, required this.bodyText});

  final String titleText;
  final String bodyText;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        TextAlign textAlignment;
        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          textAlignment = TextAlign.left;
        } else {
          textAlignment = TextAlign.center;
        }

        CrossAxisAlignment crossAxisAlignment;
        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          crossAxisAlignment = CrossAxisAlignment.start;
        } else {
          crossAxisAlignment = CrossAxisAlignment.center;
        }

        double titleSize;
        if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          titleSize = 45;
        } else {
          titleSize = 60;
        }

        double descriptionSize;
        if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          descriptionSize = 15;
        } else {
          descriptionSize = 21;
        }

        return Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
          child: SizedBox(
            width: 600,
            child: Column(
              crossAxisAlignment: crossAxisAlignment,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  titleText,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    height: 1.0,
                    fontSize: titleSize,
                  ),
                  textAlign: textAlignment,
                ),
                Text((bodyText),
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                      height: 1.7,
                      fontSize: descriptionSize,
                    ),
                    textAlign: textAlignment),
              ],
            ),
          ),
        );
      },
    );
  }
}

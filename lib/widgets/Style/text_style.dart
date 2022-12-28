import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MyStyle extends StatefulWidget {
  const MyStyle({Key? key, required responsivewidget}) : super(key: key);

  @override
  State<MyStyle> createState() => _MyStyleState();
}

class _MyStyleState extends State<MyStyle> {
  late Widget responsivewidget;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        void AdjustText() {
          TextAlign textAlignment;
          if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
            textAlignment = TextAlign.left;
          } else {
            textAlignment = TextAlign.left;
          }
        }

        void AdjustTitle() {
          double titleSize;
          if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
            titleSize = 45;
          } else {
            titleSize = 60;
          }
        }

        void AdjustDescription() {
          double descriptionSize;
          if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
            descriptionSize = 15;
          } else {
            descriptionSize = 21;
          }
        }

        return responsivewidget;
      },
    );
  }
}

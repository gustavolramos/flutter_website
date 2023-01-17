import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MyStyle extends StatelessWidget {
  MyStyle({Key? key, required this.responsivewidget}) : super(key: key);

  Widget responsivewidget;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        TextAlign textAlignment;
        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          textAlignment = TextAlign.left;
        } else {
          textAlignment = TextAlign.left;
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
        return responsivewidget;
      },
    );
  }
}

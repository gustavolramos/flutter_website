import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutContentMobile extends StatelessWidget {
  const AboutContentMobile({Key? key}) : super(key: key);

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

        return SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'MY STORY',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    height: 1.0,
                    fontSize: titleSize),
                textAlign: textAlignment,
              ),
              Text('I was born and raised in Balneário Camboriú, Brazil',
                  style: TextStyle(
                      fontWeight: FontWeight.w200,
                      height: 1.7,
                      fontSize: descriptionSize)),
              const SizedBox(height: 50),
              const CircleAvatar(
                backgroundImage:
                    AssetImage('assets/images/hotel-bella-camboriu.jpg'),
                radius: 125,
              ),
            ],
          ),
        );
      },
    );
  }
}

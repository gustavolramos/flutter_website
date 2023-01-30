import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeInfo extends StatelessWidget {
  const HomeInfo({Key? key}) : super(key: key);

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

        return Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
          child: SizedBox(
            width: 600,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'WELCOME!',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      height: 1.0,
                      fontSize: titleSize),
                  textAlign: textAlignment,
                ),
                Text(
                    ('My name is Gustavo Ramos, I am a 25-year-old Product Owner at CoBlue and aspiring Flutter Developer. This is my first Flutter-made Website.'),
                    style: TextStyle(
                        fontWeight: FontWeight.w200,
                        height: 1.7,
                        fontSize: descriptionSize),
                    textAlign: textAlignment),
              ],
            ),
          ),
        );
      },
    );
  }
}

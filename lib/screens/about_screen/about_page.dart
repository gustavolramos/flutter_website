import 'package:flutter/material.dart';
import 'package:my_first_website/screens/about_screen/about_content_desktop.dart';
import 'package:my_first_website/widgets/body/centered_view.dart';
import 'package:my_first_website/widgets/navigation_bar/navbar.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../widgets/navigation_drawer/navdrawer.dart';
import 'about_content_mobile.dart';

class AboutPage extends StatelessWidget {
  AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
          drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? const NavigationDrawer()
              : null,
          backgroundColor: Colors.white,
          body: CenteredView(
              child: Column(children: <Widget>[
            NavBar(),
            Expanded(
                child: ScreenTypeLayout(
              mobile: AboutContentMobile(),
              desktop: AboutContentDesktop(),
            )),
          ]))),
    );
  }
}
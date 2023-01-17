import 'package:flutter/material.dart';
import 'package:my_first_website/screens/about_screen/about_content_desktop.dart';
import 'package:my_first_website/widgets/body/centered_view.dart';
import 'package:my_first_website/widgets/navigation_bar/navbar.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'about_content_mobile.dart';

class AboutPage extends StatefulWidget {
  AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
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
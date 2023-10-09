import 'package:flutter/material.dart';
import 'package:my_first_website/screens/home_screen/home_content_desktop.dart';
import 'package:my_first_website/screens/home_screen/home_content_mobile.dart';
import 'package:my_first_website/widgets/body/centered_view.dart';
import 'package:my_first_website/widgets/navigation_bar/navbar.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../widgets/navigation_drawer/navdrawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
          drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile ? const MyNavigationDrawer() : null,
          backgroundColor: Colors.white,
          body: CenteredView(
              child: Column(children: <Widget>[
            const NavBar(),
            Expanded(
                child: ScreenTypeLayout(
              mobile: const HomeContentMobile(),
              desktop: const HomeContentDesktop(),
            )),
          ]))),
    );
  }
}
import 'package:flutter/material.dart';
import '../../screens/about_screen/about_page.dart';
import 'navbar_item.dart';
import 'navbar_logo.dart';

class NavBarDesktop extends StatelessWidget {
  const NavBarDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const NavBarLogo(),
              NavBarItem(
                  icon: Icons.info,
                  title: 'About',
                  pagedestination: AboutPage()),
            ]));
  }
}
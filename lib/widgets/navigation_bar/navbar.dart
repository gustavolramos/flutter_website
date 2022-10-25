import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'navbar_mobile.dart';
import 'navbar_tablet.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavBarMobile(),
      tablet: NavBarTablet(),
    );
  }
}


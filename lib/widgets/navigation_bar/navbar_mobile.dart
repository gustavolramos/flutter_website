import 'package:flutter/material.dart';
import 'package:my_first_website/widgets/navigation_bar/navbar_logo.dart';
import 'package:my_first_website/widgets/navigation_drawer/navdrawer.dart';

class NavBarMobile extends StatefulWidget {
  const NavBarMobile({super.key});

  @override
  State<NavBarMobile> createState() => _NavBarMobileState();
}

class _NavBarMobileState extends State<NavBarMobile> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            onPressed: () => setState(() {
              NavigationDrawer();
            }),
            icon: Icon(Icons.menu),
            tooltip: 'Menu',
          ),
          NavBarLogo()
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:my_first_website/widgets/navigation_bar/navbar_logo.dart';
import 'package:my_first_website/widgets/navigation_drawer/navdrawer.dart';

class NavBarMobile extends StatefulWidget {

  @override
  State<NavBarMobile> createState() => _NavBarMobileState();
}

class _NavBarMobileState extends State<NavBarMobile> {
  NavigationDrawer navigationDrawer = NavigationDrawer();

  openNavDrawer() {
    setState(() {
      navigationDrawer;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            onPressed: () => openNavDrawer(),
            icon: Icon(Icons.menu),
            tooltip: 'Menu',
          ),
          NavBarLogo()
        ],
      ),
    );
  }
}
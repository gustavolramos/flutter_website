import 'package:flutter/material.dart';
import 'package:my_first_website/screens/about_screen/about_page.dart';
import 'package:my_first_website/screens/home_screen/home_page.dart';
import 'package:my_first_website/widgets/navigation_drawer/navdrawer_header.dart';
import '../navigation_bar/navbar_item.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 10)]),
      child: Column(
        children: <Widget>[
          NavigationDrawerHeader(),
          NavBarItem(
              icon: Icons.house, title: 'About', pagedestination: HomePage()),
          NavBarItem(
              icon: Icons.info, title: 'About', pagedestination: AboutPage()),
        ],
      ),
    );
  }
}
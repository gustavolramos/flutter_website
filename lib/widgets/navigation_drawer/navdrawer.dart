import 'package:flutter/material.dart';
import 'package:my_first_website/screens/about_screen/about_page.dart';
import 'package:my_first_website/screens/home_screen/home_page.dart';
import 'package:my_first_website/widgets/navigation_drawer/navdrawer_header.dart';
import '../navigation_bar/navbar_item.dart';

class MyNavigationDrawer extends StatelessWidget {
  const MyNavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const <Widget>[
          NavigationDrawerHeader(),
          SizedBox(
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: NavBarItem(
                      icon: Icons.house,
                      title: 'Home',
                      pagedestination: HomePage()),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: NavBarItem(
                      icon: Icons.info,
                      title: 'About',
                      pagedestination: AboutPage()),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
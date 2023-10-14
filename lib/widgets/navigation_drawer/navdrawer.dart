import 'package:flutter/material.dart';
import 'package:my_first_website/screens/about_screen/about_page.dart';
import 'package:my_first_website/screens/home_screen/home_page.dart';
import 'package:my_first_website/widgets/navigation_drawer/navdrawer_header.dart';
import 'package:my_first_website/widgets/others_widgets/clickable_text.dart';
import '../navigation_bar/navbar_item.dart';

class MyNavigationDrawer extends StatelessWidget {
  const MyNavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          NavigationDrawerHeader(),
           SizedBox(
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: NavBarItem(icon: Icons.house, title: 'Home', pagedestination: HomePage()),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: NavBarItem(icon: Icons.info, title: 'About', pagedestination: AboutPage()),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Row(
                    children: [
                      const Icon(Icons.phone, color: Colors.blueGrey),
                      const SizedBox(width: 5),
                      ClickableTextWidget(text: '+39 378 064 6525'),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
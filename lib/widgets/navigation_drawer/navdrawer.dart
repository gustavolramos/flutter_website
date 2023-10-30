import 'package:flutter/material.dart';
import 'package:my_first_website/pages/projects/projects_page.dart';
import 'package:my_first_website/pages/home/home_page.dart';
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
            height: 180,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: NavBarItem(icon: Icons.house, title: 'Home', pagedestination: HomePage()),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: NavBarItem(icon: Icons.info, title: 'Projects', pagedestination: ProjectsPage()),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Row(
                    children: [
                      const Icon(Icons.phone, color: Colors.blueGrey),
                      const SizedBox(width: 5),
                      ClickableTextWidget(text: '+39 378 064 6525', parentContext: context),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(Icons.email, color: Colors.blueGrey),
                      const SizedBox(width: 5),
                      Expanded(child: ClickableTextWidget(text: 'gustavoloureiroramos\n@gmail.com', parentContext: context)),
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

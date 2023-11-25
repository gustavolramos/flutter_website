import 'package:flutter/material.dart';
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
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: SizedBox(
              height: 180,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const NavBarItem(icon: Icons.house, title: 'Home', pagedestination: '/'),
                  const NavBarItem(icon: Icons.info, title: 'Projects', pagedestination: '/projects'),
                  Row(
                    children: [
                      const Icon(Icons.phone, color: Colors.blueGrey),
                      const SizedBox(width: 6),
                      ClickableTextWidget(text: '+39 378 064 6525', parentContext: context),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.email, color: Colors.blueGrey),
                      const SizedBox(width: 6),
                      ClickableTextWidget(text: 'gustavoloureiroramos@gmail.com', parentContext: context),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

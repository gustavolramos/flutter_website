import 'package:flutter/material.dart';
import 'package:my_first_website/widgets/navigation_bar/popup_menu.dart';
import 'navbar_item.dart';
import 'navbar_logo.dart';

class NavBarDesktop extends StatelessWidget {
  const NavBarDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            NavBarLogo(),
          ]),
          Row(
            children: [
              CustomPopUpMenu(),
              NavBarItem(title: 'Projects', pagedestination: '/projects'),
            ],
          )
        ],
      ),
    );
  }
}

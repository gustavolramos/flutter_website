import 'package:flutter/material.dart';
import 'package:my_first_website/widgets/navigation_drawer/navdrawer_header.dart';
import 'package:my_first_website/widgets/navigation_drawer/navdrawer_items.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)]),
      child: Column(
        children: <Widget>[
          NavigationDrawerHeader(),
          NavDrawerItem(Icons.info, 'About'),
          NavDrawerItem(Icons.phone_android, 'Contact')
        ],
      ),
    );
  }
}

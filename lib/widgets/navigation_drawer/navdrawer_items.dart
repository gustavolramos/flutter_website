import 'package:flutter/material.dart';

class NavDrawerItem extends StatelessWidget {
  const NavDrawerItem(this.icon, this.title);

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, top: 60.0),
      child: Row(
        children: <Widget>[
          NavDrawerItem(icon, title),
        ],
      ),
    );
  }
}

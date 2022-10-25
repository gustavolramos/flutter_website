import 'package:flutter/material.dart';

class NavDrawerItem extends StatelessWidget {
  final IconData icon;
  final String title;
  const NavDrawerItem(this.icon, this.title);

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

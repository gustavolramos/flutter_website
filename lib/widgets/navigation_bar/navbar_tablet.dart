import 'package:flutter/material.dart';
import 'navbar_item.dart';
import 'navbar_logo.dart';

class NavBarTablet extends StatelessWidget {
  const NavBarTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              NavBarLogo(),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  NavBarItem(icon: Icons.info, title: 'Learn More')
                ],
              ),
            ]
        )
    );
  }
}

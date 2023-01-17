import 'package:flutter/material.dart';

class NavigationDrawerHeader extends StatelessWidget {
  const NavigationDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.blue,
      ),
      child: Text(
        'Drawer Header',
        style: TextStyle(color: Colors.white, fontSize: 24),
      ),
    );
  }
}
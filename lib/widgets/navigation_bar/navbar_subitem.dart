import 'package:flutter/material.dart';

class NavBarSubItem extends StatelessWidget {
  final String title;
  const NavBarSubItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(child: Text(title, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400, color: Colors.black)));
  }
}


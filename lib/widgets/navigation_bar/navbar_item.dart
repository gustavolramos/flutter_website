import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  const NavBarItem({Key? key, required this.icon, required this.title}) : super(key: key);
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        SizedBox(width: 10),
        Text(title, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400, color: Colors.black))]
    );
  }
}
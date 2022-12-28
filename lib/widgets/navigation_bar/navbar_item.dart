import 'package:flutter/material.dart';
import 'package:my_first_website/screens/about_screen/about.dart';

class NavBarItem extends StatefulWidget {

  const NavBarItem({Key? key, required this.icon, required this.title}) : super(key: key);
  final IconData icon;
  final String title;

  @override
  State<NavBarItem> createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(widget.icon),
        SizedBox(width: 10),
        TextButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => AboutPage()));
          },
          child: Text(widget.title,
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.black)))
    ]
    );
  }
}
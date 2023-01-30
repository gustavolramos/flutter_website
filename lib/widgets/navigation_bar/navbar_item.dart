import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  const NavBarItem(
      {Key? key,
      required this.icon,
      required this.title,
      required this.pagedestination})
      : super(key: key);

  final IconData icon;
  final String title;
  final Widget pagedestination;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(icon),
      SizedBox(width: 10),
      TextButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => pagedestination));
          },
          child: Text(title,
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.black)))
    ]
    );
  }
}
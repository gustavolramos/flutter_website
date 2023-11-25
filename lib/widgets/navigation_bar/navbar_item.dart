import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavBarItem extends StatelessWidget {
  const NavBarItem({Key? key, this.icon, required this.title, required this.pagedestination}) : super(key: key);

  final IconData? icon;
  final String title;
  final String pagedestination;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(icon, color: Colors.blueGrey),
      TextButton(onPressed: () => context.go(pagedestination), child: Text(title, style: Theme.of(context).textTheme.titleMedium)),
    ]);
  }
}

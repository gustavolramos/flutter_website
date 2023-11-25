import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 48,
      height: 48,
      child: IconButton(
        onPressed: () => context.go('/'),
        tooltip: 'Home',
        icon: Image.asset('assets/images/logo-flutter.png'),
        hoverColor: Colors.grey.shade100,
      ),
    );
  }
}
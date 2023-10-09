import 'package:flutter/material.dart';
import '../../screens/home_screen/home_page.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
      },
      icon: Image.asset('assets/images/logo-flutter.jpg'),
      iconSize: 60,
      splashRadius: 60,
    );
  }
}

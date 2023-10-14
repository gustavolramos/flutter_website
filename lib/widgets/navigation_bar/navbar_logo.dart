import 'package:flutter/material.dart';
import '../../screens/home_screen/home_page.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) =>  HomePage()));
      },
      icon: Image.asset('assets/images/logo-flutter.png'),
      iconSize: 36,
      splashRadius: 30,
    );
  }
}
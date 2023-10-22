import 'package:flutter/material.dart';
import '../../pages/home/home_page.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) =>  const HomePage()));
      },
      tooltip: 'Home',
      icon: Image.asset('assets/images/logo-flutter.png'),
      iconSize: 36,
      hoverColor: Colors.grey,
    );
  }
}
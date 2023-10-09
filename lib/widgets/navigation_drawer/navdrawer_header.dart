import 'package:flutter/material.dart';

class NavigationDrawerHeader extends StatelessWidget {
  const NavigationDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 100,
      child: DrawerHeader(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: const BoxDecoration(color: Colors.blueGrey),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: (){}, icon: Image.asset('assets/images/logo-github-white.png')),
            IconButton(onPressed: (){}, icon: Image.asset('assets/images/instagram.png')),
            IconButton(onPressed: (){}, icon: Image.asset('assets/images/logo-twitter.png')),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:my_first_website/utils/navigation.dart';

class NavigationDrawerHeader extends StatelessWidget {
  NavigationDrawerHeader({Key? key}) : super(key: key);

  final UrlLauncher urlLauncher = UrlLauncher();

  @override
  Widget build(BuildContext context) {  
    return SizedBox(
      height: 100,
      child: DrawerHeader(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: const BoxDecoration(color: Colors.blueGrey),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () async => await urlLauncher.launchUrlMethod(Uri.parse('https://github.com/gustavolramos')),
              icon: Image.asset('assets/images/logo-github-white.png'),
              iconSize: 40,
            ),
            IconButton(
              onPressed: () async => await urlLauncher.launchUrlMethod(Uri.parse('https://www.instagram.com/gustavolramos/')),
              icon: Image.asset('assets/images/logo-instagram.png'),
              iconSize: 40,
            ),
            IconButton(
              onPressed: () async => await urlLauncher.launchUrlMethod(Uri.parse('https://twitter.com/gustavolramos')),
              icon: Image.asset('assets/images/logo-x-white.png'),
              iconSize: 30,
            ),
          ],
        ),
      ),
    );
  }
}
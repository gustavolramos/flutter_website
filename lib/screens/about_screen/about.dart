import 'package:flutter/material.dart';
import 'package:my_first_website/screens/about_screen/about_content.dart';
import 'package:my_first_website/widgets/body/centered_view.dart';
import 'package:my_first_website/widgets/navigation_bar/navbar.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CenteredView(
      child: Column(
        children: <Widget>[
          NavBar(),
          AboutInfo(),
        ],
      ),
    );
  }
}

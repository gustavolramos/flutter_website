import 'package:flutter/material.dart';
import 'package:my_first_website/widgets/navigation_bar/navbar_subitem.dart';

class NavBarSubItemList extends StatelessWidget {
  const NavBarSubItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.lightBlueAccent,
        child: SizedBox(
          width: 50,
          height: 100,
          child: Column(
            children: [
              NavBarSubItem(title: 'My Story'),
              SizedBox(height: 20.0),
              NavBarSubItem(title: 'Projects'),
            ],
          ),
        )
    );
  }
}


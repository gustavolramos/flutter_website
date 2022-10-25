import 'package:flutter/material.dart';

class NavigationDrawerHeader extends StatelessWidget {
  const NavigationDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      color: Colors.blue,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text('Got interested?',
          style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w800),
          ),
          Text('Choose an option below',
          style: TextStyle(fontSize: 12, color: Colors.white,)
          )
        ],
      ),
    );
  }
}

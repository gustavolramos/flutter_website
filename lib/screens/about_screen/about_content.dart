import 'package:flutter/material.dart';

class AboutInfo extends StatelessWidget {
  const AboutInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.centerLeft,
          children: <Widget>[
            Positioned(
                left: 0,
                child: SizedBox(
                    height: 200,
                    width: 200,
                    child: Image.asset('assets/images/hotel-bella-camboriu.jpg'))),
            Positioned(
              right: 50,
              bottom: 50,
              child: Container(
                color: Colors.black,
                child: Text('I was born and raised in Balneário Camboriú, Brazil', style: TextStyle(color: Colors.white)),
              ))],
        )],
    );
  }
}
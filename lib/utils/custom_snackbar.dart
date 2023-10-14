import 'package:flutter/material.dart';

class CustomSnackBar {
  void showCopiedSnackBar(String text, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        backgroundColor: Colors.blue,
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Copied', style: TextStyle(color: Colors.white)),
            SizedBox(width: 5),
            Icon(Icons.check, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
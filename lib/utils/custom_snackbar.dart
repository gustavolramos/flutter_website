import 'package:flutter/material.dart';

class CustomSnackBar {
  void showCopiedSnackBar(String text, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.blue,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        elevation: 8.0,
        content: const Row(
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

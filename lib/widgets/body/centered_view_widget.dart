import 'package:flutter/material.dart';

class CenteredView extends StatelessWidget {
  const CenteredView({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue.shade50,
      padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 60),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1000), child: child),
    );
  }
}
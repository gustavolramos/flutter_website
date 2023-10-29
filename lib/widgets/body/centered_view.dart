import 'package:flutter/material.dart';

class CenteredView extends StatelessWidget {
  const CenteredView({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.fromLTRB(50, 20, 50, 60),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(constraints: const BoxConstraints(maxWidth: 1200), child: child),
    );
  }
}
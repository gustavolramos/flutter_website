import 'package:flutter/material.dart';

class SquareImage extends StatelessWidget {
   const SquareImage({
    super.key,
    required this.customAsset,
    this.customSemanticLabel,
    this.customBackgroundColor,
    required this.customPadding,
    this.imageWidth,
    this.imageHeight,
  });

  final String customAsset;
  final String? customSemanticLabel;
  final Color? customBackgroundColor;
  final double customPadding;
  final double? imageWidth;
  final double? imageHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(customPadding),
      decoration: BoxDecoration(
        color: customBackgroundColor,
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      child: Image.asset(customAsset, width: imageWidth, height: imageHeight, semanticLabel: customSemanticLabel),
    );
  }
}

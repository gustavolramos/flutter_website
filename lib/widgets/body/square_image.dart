import 'package:flutter/material.dart';

class SquareImage extends StatelessWidget {
  const SquareImage({
    super.key,
    required this.customAsset,
    this.customSemanticLabel,
    this.customBackgroundColor,
    required this.customPadding,
    required this.customBorderColor,
    this.imageWidth,
    this.imageHeight,
  });

  final String customAsset;
  final String? customSemanticLabel;
  final Color? customBackgroundColor;
  final Color customBorderColor;
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
        border: Border(
          top: BorderSide(color: customBorderColor, width: 2),
          bottom: BorderSide(color: customBorderColor, width: 2),
          left: BorderSide(color: customBorderColor, width: 2),
          right: BorderSide(color: customBorderColor, width: 2),
        ),
      ),
      child: Image.asset(customAsset, width: imageWidth, height: imageHeight, semanticLabel: customSemanticLabel),
    );
  }
}

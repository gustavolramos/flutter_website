import 'package:flutter/material.dart';
import 'package:my_first_website/utils/content_clipper.dart';

class ClickableTextWidget extends StatefulWidget {
  ClickableTextWidget({super.key, required this.text, required this.parentContext});

  final String text;
  final ContentClipper contentClipper = ContentClipper();
  final BuildContext parentContext;

  @override
  ClickableTextWidgetState createState() => ClickableTextWidgetState();
}

class ClickableTextWidgetState extends State<ClickableTextWidget> {
  bool isHovered = false;
  Color? hoverColor;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() {
        isHovered = true;
        hoverColor = Colors.grey.shade300;
      }),
      onExit: (_) => setState(() {
        isHovered = false;
        hoverColor = null;
      }),
      child: GestureDetector(
        onTap: () {
          widget.contentClipper.copyToClipboard(widget.text);
        },
        child: Row(
          children: [
            Text(widget.text, style: Theme.of(context).textTheme.bodyMedium!.copyWith(backgroundColor: hoverColor))
          ],
        ),
      ),
    );
  }
}
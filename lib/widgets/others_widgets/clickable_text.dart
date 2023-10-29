import 'package:flutter/material.dart';
import 'package:my_first_website/utils/content_clipper.dart';
import 'package:my_first_website/widgets/others_widgets/custom_snackbar.dart';

class ClickableTextWidget extends StatefulWidget {
  ClickableTextWidget({super.key, required this.text, required this.parentContext});

  final String text;
  final ContentClipper contentClipper = ContentClipper();
  final CustomSnackBar customSnackBar = CustomSnackBar();
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
        hoverColor = Colors.grey.shade200;
      }),
      onExit: (_) => setState(() {
        isHovered = false;
        hoverColor = null;
      }),
      child: GestureDetector(
        onTap: () {
          widget.contentClipper.copyToClipboard(widget.text);
          widget.customSnackBar.showCopiedSnackBar('Copied', widget.parentContext);
        },
        child: Row(
          children: [
            Text(widget.text,
            softWrap: true,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  backgroundColor: hoverColor,
                ),
                ),
            const SizedBox(width: 5),
          ],
        ),
      ),
    );
  }
}
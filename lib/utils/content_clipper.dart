import 'package:flutter/services.dart';

class ContentClipper {
  Future<void> copyToClipboard(String text) async {
    await Clipboard.setData(ClipboardData(text: text));
  }
}

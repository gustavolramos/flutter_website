import 'package:url_launcher/url_launcher.dart';

class UrlLauncher {
  Future<void> launchUrlMethod(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}

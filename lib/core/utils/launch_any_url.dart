import 'package:url_launcher/url_launcher.dart';

Future<void> launchAnyUrl(String uri) async {
  if (uri.isNotEmpty && !uri.startsWith('http')) {
    uri = 'https://$uri';
  }

  final Uri url = Uri.parse(uri);

  if (await canLaunchUrl(url)) {
    await launchUrl(url, mode: LaunchMode.externalApplication);
  }
}

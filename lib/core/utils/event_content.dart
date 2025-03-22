import 'dart:convert';

import 'package:html/dom.dart';
import 'package:html/parser.dart' as html;

import '../core.dart';

class EventContent {
  const EventContent({
    required this.contentData,
    this.titleAndLink,
    this.idAndLink,
  });

  final (String plainText, String highlightedText, String link) contentData;
  final (String, String)? titleAndLink;
  final (String, String)? idAndLink;

  static EventContent extractEventContent(String content) {
    final DocumentFragment document = html.parseFragment(content);
    final StringBuffer buffer = StringBuffer();
    String? highlightedText;
    String? link;
    String? title;
    String? wikiId;

    void traverse(Node node) {
      if (node is Text) {
        buffer.write(node.text);
      } else if (node is Element) {
        if (node.localName == 'a') {
          highlightedText ??= node.text.trim();
          link ??= node.attributes['href'];
          title ??= node.attributes['title'];
          wikiId ??= node.attributes['data-wiki-id'];
        }

        node.nodes.forEach(traverse);
      }
    }

    document.nodes.forEach(traverse);

    return EventContent(
      contentData: (
        buffer.toString().trim(),
        highlightedText ?? '',
        link ?? '',
      ),
      titleAndLink: (title != null && link != null) ? (title!, link!) : null,
      idAndLink: (wikiId != null && link != null) ? (wikiId!, link!) : null,
    );
  }

  String? get dataUrl {
    // https://en.wikipedia.org/api/rest_v1/page/summary/Valeri_Polyakov

    final String? title = titleAndLink?.$1;

    if (title == null) {
      return null;
    }

    final String apiUrl =
        'https://en.wikipedia.org/api/rest_v1/page/summary/${Uri.encodeComponent(title)}';

    return apiUrl;
  }

  Future<(String?, String?)?> fetchData() async {
    final String? apiUrl = dataUrl;
    if (apiUrl == null) {
      return null;
    }

    final ApiResponse response = await ApiClient().get(Uri.parse(apiUrl));
    if (response.status.isOk) {
      final json = jsonDecode(utf8.decode(response.data));

      return (
        // ignore: avoid_dynamic_calls
        json['thumbnail']?['source'] as String?,
        // ignore: avoid_dynamic_calls
        json['extract'] as String?,
      );
    }

    return null;
  }
}

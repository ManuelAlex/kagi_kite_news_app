import 'package:flutter/material.dart';

import '_dotted_line_widget.dart';

class Highlights extends StatelessWidget {
  const Highlights({super.key, required this.talkingPoints});
  final List<String> talkingPoints;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        if (talkingPoints.isNotEmpty)
          Text(
            'Highlights',
            style: Theme.of(
              context,
            ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
          ),

        ...talkingPoints.asMap().entries.map((MapEntry<int, String> entry) {
          final int index = entry.key + 1;
          final String talkingPoint = entry.value;
          final List<String> parts = talkingPoint.split(':');
          final String title = parts.first;
          final String content =
              parts.length > 1 ? parts.sublist(1).join(':').trim() : '';

          return _Highlight(index: index, title: title, content: content);
        }),
        const SizedBox(height: 16),
        const DottedLineWidget(
          lineWidth: double.infinity,
          lineHeight: 0.5,
          dashWidth: 2,
        ),
      ],
    );
  }
}

class _Highlight extends StatelessWidget {
  const _Highlight({
    required this.index,
    required this.title,
    required this.content,
  });

  final int index;
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(height: 24),
        const DottedLineWidget(
          lineWidth: double.infinity,
          lineHeight: 0.5,
          dashWidth: 2,
        ),
        const SizedBox(height: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.orangeAccent.withAlpha(125),
                  ),
                  child: Text(
                    '$index',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                const SizedBox(width: 16),
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),

            Text(content, style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class EventTimeLineWidget extends StatelessWidget {
  const EventTimeLineWidget({super.key, required this.timeLines});

  final List<String> timeLines;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (timeLines.isNotEmpty)
          Text(
            'Timeline of events',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        const SizedBox(height: 8),
        ...timeLines.asMap().entries.map((MapEntry<int, String> entry) {
          final int index = entry.key + 1;
          final String talkingPoint = entry.value;
          final List<String> parts = talkingPoint.split('::');
          final String title = parts.first;
          final String content =
              parts.length > 1 ? parts.sublist(1).join(':').trim() : '';

          return _EventTimeLineWidget(
            index: index,
            title: title,
            content: content,
            lastIndex: timeLines.length,
          );
        }),
      ],
    );
  }
}

class _EventTimeLineWidget extends StatelessWidget {
  const _EventTimeLineWidget({
    required this.index,
    required this.title,
    required this.content,
    required this.lastIndex,
  });

  final int index;
  final String title;
  final String content;
  final int lastIndex;

  @override
  Widget build(BuildContext context) {
    const Color blue = Colors.blueAccent;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: blue,
              ),
              child: Text(
                '$index',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(width: 8),

            Flexible(
              child: Text(
                title,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: blue,
                ),
                overflow: TextOverflow.ellipsis,
                softWrap: true,
              ),
            ),
          ],
        ),

        const SizedBox(height: 8),

        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                if (index != lastIndex) Container(width: 2, color: blue),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    content,
                    style: Theme.of(context).textTheme.titleMedium,
                    softWrap: true,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 4),
      ],
    );
  }
}

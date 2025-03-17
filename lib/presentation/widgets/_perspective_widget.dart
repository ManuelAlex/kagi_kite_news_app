import 'package:flutter/material.dart';

import '../../core/utils/launch_any_url.dart';
import '../../domain/entities/entities.dart';

class PerspectiveWidget extends StatelessWidget {
  const PerspectiveWidget({super.key, required this.perspectives});
  final List<Perspective> perspectives;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        if (perspectives.isNotEmpty) ...<Widget>[
          Text(
            'Perspective',
            style: Theme.of(
              context,
            ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
        ],
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,

              children:
                  perspectives.map((Perspective perspective) {
                    final List<String> parts = perspective.text.split(':');
                    final String title = parts.first;
                    final String content =
                        parts.length > 1
                            ? parts.sublist(1).join(':').trim()
                            : '';

                    final String sourceName =
                        perspective.sources.isNotEmpty
                            ? perspective.sources[0].name
                            : 'Unknown Source';
                    final String sourceUrl =
                        perspective.sources.isNotEmpty
                            ? perspective.sources[0].url
                            : '';

                    return _PerspectiveCard(
                      title: title,
                      content: content,
                      sourceName: sourceName,
                      sourceUrl: sourceUrl,
                    );
                  }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}

class _PerspectiveCard extends StatelessWidget {
  const _PerspectiveCard({
    required this.title,
    required this.content,
    required this.sourceName,
    required this.sourceUrl,
  });
  final String title, content;
  final String sourceName;
  final String sourceUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      child: Card(
        elevation: 0.3,
        color: Colors.white70,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 16),
              Text(
                title,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 16),
              Text(content, style: Theme.of(context).textTheme.titleMedium),
              const Spacer(),
              const SizedBox(height: 4),
              GestureDetector(
                onTap: () => launchAnyUrl(sourceUrl),
                child: Text(
                  sourceName,
                  style: Theme.of(
                    context,
                  ).textTheme.titleMedium?.copyWith(color: Colors.blueAccent),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

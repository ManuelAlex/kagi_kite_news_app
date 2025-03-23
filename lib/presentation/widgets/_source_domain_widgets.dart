import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../core/utils/launch_any_url.dart';
import '../../domain/entities/entities.dart';
import '_expandable_container.dart';

class SourceDomainWidget extends StatefulWidget {
  const SourceDomainWidget({
    super.key,
    required this.articles,
    required this.domainSources,
  });

  final List<Domain> domainSources;
  final List<Article> articles;

  @override
  State<SourceDomainWidget> createState() => _SourceDomainWidgetState();
}

class _SourceDomainWidgetState extends State<SourceDomainWidget> {
  bool isExpanded = false;
  int? hoveredIndex;

  void setHoveredIndex(int? index) {
    setState(() => hoveredIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    if (widget.domainSources.isEmpty) {
      return const Center(child: Text('No sources available'));
    }

    const int maxVisible = 8;
    final List<Domain> visibleSources =
        widget.domainSources.length > maxVisible
            ? widget.domainSources.sublist(0, maxVisible)
            : widget.domainSources;

    final List<Domain> hiddenSources =
        widget.domainSources.length > maxVisible
            ? widget.domainSources.sublist(maxVisible)
            : [];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Sources',
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
            ),
            ExpandIcon(
              size: 20,
              isExpanded: isExpanded,
              onPressed: (_) {
                setState(() => isExpanded = !isExpanded);
              },
            ),
          ],
        ),
        const SizedBox(height: 16),

        Wrap(
          runSpacing: 8,
          spacing: 8,
          children:
              visibleSources.asMap().entries.map((entry) {
                final index = entry.key;
                final source = entry.value;
                final sourceArticles =
                    widget.articles
                        .where(
                          (Article article) => article.domain == source.name,
                        )
                        .toList();

                return _SourceDomain(
                  name: source.name.isNotEmpty ? source.name : 'Unknown Source',
                  favIcon: source.favicon.isNotEmpty ? source.favicon : '',
                  articles: sourceArticles,
                  isHovered: hoveredIndex == index,
                  onHovered: () {
                    setState(() {
                      if (hoveredIndex == index) {
                        hoveredIndex = index;
                      } else {
                        hoveredIndex = null;
                      }
                    });
                  },
                );
              }).toList(),
        ),

        if (hiddenSources.isNotEmpty)
          ExpandableContainer(
            isExpanded: isExpanded,
            child: Wrap(
              runSpacing: 8,
              spacing: 8,
              children:
                  hiddenSources.asMap().entries.map((entry) {
                    final index = entry.key;
                    final source = entry.value;
                    final sourceArticles =
                        widget.articles
                            .where(
                              (Article article) =>
                                  article.domain == source.name,
                            )
                            .toList();

                    return _SourceDomain(
                      name:
                          source.name.isNotEmpty
                              ? source.name
                              : 'Unknown Source',
                      favIcon: source.favicon.isNotEmpty ? source.favicon : '',
                      articles: sourceArticles,
                      isHovered: hoveredIndex == index,
                      onHovered: () {
                        setState(() {
                          if (hoveredIndex == index) {
                            hoveredIndex = index;
                          } else {
                            hoveredIndex = null;
                          }
                        });
                      },
                    );
                  }).toList(),
            ),
          ),
      ],
    );
  }
}

class _SourceDomain extends StatefulWidget {
  const _SourceDomain({
    required this.name,
    required this.favIcon,
    required this.articles,
    required this.isHovered,
    required this.onHovered,
  });

  final String name;
  final String favIcon;
  final bool isHovered;
  final List<Article> articles;
  final VoidCallback onHovered;

  @override
  State<_SourceDomain> createState() => _SourceDomainState();
}

class _SourceDomainState extends State<_SourceDomain> {
  void _showArticlesDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(widget.name),
          content: SizedBox(
            width: 300,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children:
                    widget.articles.isNotEmpty
                        ? widget.articles
                            .map(
                              (Article article) => ListTile(
                                title: Text(article.title),
                                subtitle: Text(article.domain),
                                onTap: () async {
                                  await launchAnyUrl(article.link);
                                },
                              ),
                            )
                            .toList()
                        : [const Text('No articles available')],
              ),
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (_) => widget.isHovered,
      onTap: () => _showArticlesDialog(context),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: widget.isHovered ? Colors.grey.shade200 : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            if (widget.favIcon.isNotEmpty)
              Container(
                width: 24,
                height: 24,

                decoration: const BoxDecoration(shape: BoxShape.circle),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: CachedNetworkImage(
                    imageUrl: widget.favIcon,
                    width: 24,
                    height: 24,

                    placeholder:
                        (BuildContext context, String url) => const SizedBox(
                          width: 24,
                          height: 24,
                          child: Icon(Icons.broken_image),
                        ),
                    errorWidget:
                        (BuildContext context, String url, Object error) =>
                            const Icon(Icons.broken_image),
                    fit: BoxFit.cover,
                  ),
                ),
              )
            else
              const Icon(Icons.language, size: 24, color: Colors.grey),

            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  widget.name,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                Text(switch (widget.articles.length) {
                  0 => 'No article',
                  1 => '${widget.articles.length} article',
                  _ => '${widget.articles.length} articles',
                }, style: Theme.of(context).textTheme.bodySmall),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

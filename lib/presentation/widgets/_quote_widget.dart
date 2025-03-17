import 'package:flutter/material.dart';

import '../../core/utils/launch_any_url.dart';

class QuoteWidget extends StatelessWidget {
  const QuoteWidget({
    super.key,
    required this.quote,
    required this.quoteSourceDomain,
    required this.quoteSourceUrl,
    required this.quoteAuthor,
  });

  final String quote;
  final String quoteSourceUrl;
  final String quoteSourceDomain;
  final String quoteAuthor;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.3,
      color: Colors.white70,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(quote, style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () => launchAnyUrl(quoteSourceUrl),
              child: Text(
                '$quoteAuthor (via $quoteSourceDomain)',
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(color: Colors.blueAccent),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

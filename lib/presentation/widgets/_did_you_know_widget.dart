import 'package:flutter/material.dart';

class DidYouKnowWidget extends StatelessWidget {
  const DidYouKnowWidget({super.key, required this.content});
  final String content;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.3,
      color: const Color(0xFFCCCCFF),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 16),
            Text(
              'Did you know?',
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(content, style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class InternationalReactionsWidget extends StatelessWidget {
  const InternationalReactionsWidget({
    super.key,
    required this.internationalReactions,
  });

  final List<String> internationalReactions;

  bool isValidReaction(String intReaction) {
    final int firstSpaceIndex = intReaction.indexOf(' ');
    if (firstSpaceIndex == -1) {
      return false;
    }

    final String remainingText = intReaction.substring(firstSpaceIndex + 1);
    final int firstColonIndex = remainingText.indexOf(':');
    return firstColonIndex != -1;
  }

  @override
  Widget build(BuildContext context) {
    final bool hasValidReactions = internationalReactions.any(isValidReaction);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (hasValidReactions)
          Text(
            'International Reactions',
            style: Theme.of(
              context,
            ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
          ),
        if (hasValidReactions) const SizedBox(height: 16),
        ...internationalReactions.map((String intReaction) {
          if (!isValidReaction(intReaction)) {
            return const SizedBox.shrink();
          }

          final int firstSpaceIndex = intReaction.indexOf(' ');
          final String flagEmoji = intReaction.substring(0, firstSpaceIndex);
          final String remainingText = intReaction.substring(
            firstSpaceIndex + 1,
          );
          final int firstColonIndex = remainingText.indexOf(':');

          final String title =
              remainingText.substring(0, firstColonIndex).trim();
          final String content =
              remainingText.substring(firstColonIndex + 1).trim();

          return _InternationalReaction(
            flagEmoji: flagEmoji,
            title: title,
            content: content,
          );
        }),
      ],
    );
  }
}

class _InternationalReaction extends StatelessWidget {
  const _InternationalReaction({
    required this.content,
    required this.title,
    required this.flagEmoji,
  });

  final String title;
  final String content;
  final String flagEmoji;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.3,
      color: Colors.white70,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const SizedBox(height: 16),
            Row(
              children: [
                Text(
                  flagEmoji,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(width: 8),
                Flexible(
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Flexible(
              child: Text(
                content,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

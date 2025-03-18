import 'package:flutter/material.dart';

class HistoricalBackgroundWidget extends StatelessWidget {
  const HistoricalBackgroundWidget({
    super.key,
    required this.historicalBackground,
  });
  final String historicalBackground;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Historical Background',
          style: Theme.of(
            context,
          ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        Text(
          historicalBackground,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }
}

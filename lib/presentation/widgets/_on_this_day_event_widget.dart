import 'package:flutter/material.dart';

class OnThisDayEventWidget extends StatelessWidget {
  const OnThisDayEventWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Events',
            style: Theme.of(
              context,
            ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),

          const _EventItem(
            year: '2011',
            title: 'First Libyan Civil War',
            description: 'The French Air Force launched Opération Harmattan...',
          ),
          const _EventItem(
            year: '1998',
            title: 'Ariana Afghan Airlines Crash',
            description: 'An unscheduled flight crashed into a mountain...',
          ),
          const _EventItem(
            year: '1944',
            title: 'A Child of Our Time',
            description: 'The secular oratorio by Michael Tippett premiered...',
          ),
          const _EventItem(
            year: '1824',
            title: 'Benjamin Morrell Explores Antarctica',
            description: 'American explorer departed after a voyage...',
          ),
          const _EventItem(
            year: '1279',
            title: 'Mongol Conquest of Song China',
            description: 'Zhao Bing, the last Song emperor, drowned...',
            isLast: true,
          ),

          const SizedBox(height: 20),

          // People Section
          const Text(
            'People',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),

          SizedBox(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                _EventPeople(
                  year: '2008',
                  name: 'Arthur C. Clarke',
                  description: 'Sci-fi writer died.',
                ),
                _EventPeople(
                  year: '1955',
                  name: 'Bruce Willis',
                  description: 'Actor was born.',
                ),
                _EventPeople(
                  year: '1950',
                  name: 'Edgar Rice Burroughs',
                  description: 'Creator of Tarzan died.',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _EventPeople extends StatelessWidget {
  const _EventPeople({
    required this.year,
    required this.name,
    required this.description,
  });

  final String year, name, description;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160, // Fixed width to prevent overflow
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center, // Centering content
        children: [
          Text(
            year,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 5),

          Text(
            name,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 3),
          Text(
            description,
            style: const TextStyle(fontSize: 12, color: Colors.black87),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}

class _EventItem extends StatelessWidget {
  const _EventItem({
    required this.year,
    required this.title,
    required this.description,
    this.isLast = false,
  });

  final String year;
  final String title;
  final String description;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 8,
                height: 8,
                decoration: const BoxDecoration(
                  color: Colors.blueAccent,
                  shape: BoxShape.circle,
                ),
              ),
              //  if (!isLast)
              Expanded(
                child: VerticalDivider(
                  color: isLast ? Colors.transparent : Colors.blueAccent,
                  thickness: 1.5,
                ),
              ),
            ],
          ),
          const SizedBox(width: 10),

          // Event Details
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 32.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    year,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        description,
                        style: Theme.of(context).textTheme.bodySmall,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

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
          const Text(
            'Thursday, March 20',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),

          _buildEventItem(
            year: '2011',
            title: 'First Libyan Civil War',
            description: 'The French Air Force launched Opération Harmattan...',
          ),
          _buildEventItem(
            year: '1998',
            title: 'Ariana Afghan Airlines Crash',
            description: 'An unscheduled flight crashed into a mountain...',
          ),
          _buildEventItem(
            year: '1944',
            title: 'A Child of Our Time',
            description: 'The secular oratorio by Michael Tippett premiered...',
          ),
          _buildEventItem(
            year: '1824',
            title: 'Benjamin Morrell Explores Antarctica',
            description: 'American explorer departed after a voyage...',
          ),
          _buildEventItem(
            year: '1279',
            title: 'Mongol Conquest of Song China',
            description: 'Zhao Bing, the last Song emperor, drowned...',
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
              children: [
                _buildPersonItem(
                  '2008',
                  'Arthur C. Clarke',
                  'Sci-fi writer died.',
                ),
                _buildPersonItem('1955', 'Bruce Willis', 'Actor was born.'),
                _buildPersonItem(
                  '1950',
                  'Edgar Rice Burroughs',
                  'Creator of Tarzan died.',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEventItem({
    required String year,
    required String title,
    required String description,
    bool isLast = false,
  }) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Year + Vertical Line
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                  color: Colors.blueAccent,
                  shape: BoxShape.circle,
                ),
              ),
              if (!isLast)
                const Expanded(
                  // Allows the line to stretch
                  child: VerticalDivider(
                    color: Colors.blueAccent,
                    thickness: 2,
                  ),
                ),
            ],
          ),
          const SizedBox(width: 10),

          // Event Details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  year,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  description,
                  style: const TextStyle(fontSize: 14, color: Colors.black87),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPersonItem(String year, String name, String description) {
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

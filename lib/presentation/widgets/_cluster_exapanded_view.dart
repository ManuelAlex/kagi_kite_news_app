import 'package:flutter/material.dart';

import '../../core/utils/launch_any_url.dart';
import '../../domain/entities/entities.dart';
import '_did_you_know_widget.dart';
import '_event_time_line_widget.dart';
import '_highlights_widget.dart';
import '_historical_background_widget.dart';
import '_image_view.dart';
import '_international_reactions_widget.dart';
import '_perspective_widget.dart';
import '_quote_widget.dart';
import '_source_domain_widgets.dart';

class ClusterExpandedView extends StatelessWidget {
  const ClusterExpandedView({
    super.key,
    required this.cluster,
    required this.closeStory,
  });

  final Cluster cluster;

  final VoidCallback closeStory;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(height: 32),
        // short summary
        Text(
          cluster.shortSummary,
          style: Theme.of(
            context,
          ).textTheme.headlineLarge?.copyWith(fontSize: 18),
        ),
        const SizedBox(height: 24),

        //location
        if (cluster.location.isNotEmpty)
          InkWell(
            onTap:
                () => launchAnyUrl(
                  'https://www.google.com/maps/search/?api=1&query=${cluster.location}',
                ),
            child: Row(
              children: <Widget>[
                const Icon(Icons.location_on, color: Colors.grey, size: 20),
                const SizedBox(width: 4),
                Text(
                  cluster.location,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
          ),

        // NetWork news image from article[0]
        if (cluster.articles[0].image != null) ...<Widget>[
          const SizedBox(height: 16),
          ImageView(
            image: cluster.articles[0].image,
            domain: cluster.articles[0].domain,
            imageCaption: cluster.articles[0].imageCaption,
          ),
        ],
        // Highligts
        if (cluster.talkingPoints.isNotEmpty) ...<Widget>[
          const SizedBox(height: 24),
          Highlights(talkingPoints: cluster.talkingPoints),
        ],
        //Quotes
        if (cluster.quote.isNotEmpty) ...<Widget>[
          const SizedBox(height: 24),
          QuoteWidget(
            quote: cluster.quote,
            quoteSourceDomain: cluster.quoteSourceDomain,
            quoteSourceUrl: cluster.quoteSourceUrl,
            quoteAuthor: cluster.quoteAuthor,
          ),
        ],
        // NetWork news image from article[1]
        if (cluster.articles[1].image != null) ...<Widget>[
          const SizedBox(height: 24),
          ImageView(
            image: cluster.articles[1].image,
            domain: cluster.articles[1].domain,
            imageCaption: cluster.articles[1].imageCaption,
          ),
        ],

        // Perspective
        if (cluster.perspectives.isNotEmpty) ...<Widget>[
          const SizedBox(height: 24),
          PerspectiveWidget(perspectives: cluster.perspectives),
        ],
        // Historical background
        if (cluster.perspectives.isNotEmpty) ...<Widget>[
          const SizedBox(height: 24),
          HistoricalBackgroundWidget(
            historicalBackground: cluster.historicalBackground,
          ),
        ],
        if (cluster.internationalReactions.isNotEmpty) ...<Widget>[
          const SizedBox(height: 24),
          InternationalReactionsWidget(
            internationalReactions: cluster.internationalReactions,
          ),
        ],
        if (cluster.timeline.isNotEmpty) ...<Widget>[
          const SizedBox(height: 24),
          EventTimeLineWidget(timeLines: cluster.timeline),
        ],
        if (cluster.timeline.isNotEmpty) ...<Widget>[
          const SizedBox(height: 24),
          SourceDomainWidget(
            domainSources: cluster.domains,
            articles: cluster.articles,
          ),
        ],
        if (cluster.didYouKnow.isNotEmpty) ...<Widget>[
          const SizedBox(height: 24),
          DidYouKnowWidget(content: cluster.didYouKnow),
        ],
        const SizedBox(height: 24),
        InkWell(
          onTap: closeStory,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            child: Center(
              child: Text(
                'Close Story',
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

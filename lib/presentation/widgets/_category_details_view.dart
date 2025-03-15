import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/core.dart';
import '../../core/utils/first_letter_index.dart';
import '../../domain/domain.dart';

import '../providers/news_category_details_provider/news_category_details_provider.dart';
import 'error_block.dart';
import 'expandable_container.dart';
import 'expandable_icon.dart';
import 'kite_loading_widget.dart';

class CategoryDetailsView extends ConsumerStatefulWidget {
  const CategoryDetailsView(this.category, {super.key});

  final Category category;

  @override
  ConsumerState<CategoryDetailsView> createState() =>
      _CategoryDetailsViewState();
}

class _CategoryDetailsViewState extends ConsumerState<CategoryDetailsView> {
  int? _expandedIndex;

  void _toggleExpansion(int index) {
    setState(() {
      _expandedIndex = (_expandedIndex == index) ? null : index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final AsyncValue<Result<CategoryDetails>> detailsAsync = ref.watch(
      newsCategoryDetailsProvider(widget.category.file),
    );

    return detailsAsync.when(
      data: (Result<CategoryDetails> result) {
        return switch (result) {
          final Success<CategoryDetails> categoryDetails => Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (categoryDetails.data.clusters.isEmpty)
                    const Center(child: Text('No clusters available')),
                  ...categoryDetails.data.clusters.asMap().entries.map<Widget>((
                    entry,
                  ) {
                    final int index = entry.key;
                    final Cluster cluster = entry.value;
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: ClusterView(
                        cluster: cluster,
                        isExpanded: _expandedIndex == index,
                        onExpand: () => _toggleExpansion(index),
                      ),
                    );
                  }),
                  const SizedBox(height: 16),
                  if (categoryDetails.data.clusters.isNotEmpty)
                    Align(
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          color: Colors.grey.withAlpha(45),
                          padding: const EdgeInsets.all(16),
                          child: Text(
                            'Mark all as read',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
          final Failure<CategoryDetails> failure => ErrorBlock(
            failure.message,
            null,
          ),
          _ => const ErrorBlock('Unknown error', null),
        };
      },
      error: ErrorBlock.new,
      loading: () => const Center(child: KiteLoadingWidget(progressValue: 0.5)),
    );
  }
}

class ClusterView extends StatelessWidget {
  const ClusterView({
    super.key,
    required this.cluster,
    required this.isExpanded,
    required this.onExpand,
  });

  final Cluster cluster;
  final bool isExpanded;
  final VoidCallback onExpand;

  @override
  Widget build(BuildContext context) {
    final index = cluster.category.firstLetterIndex;
    final categoryColor = Colors.primaries[index % Colors.primaries.length];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: onExpand,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          cluster.category,
                          style: Theme.of(context).textTheme.labelSmall
                              ?.copyWith(color: categoryColor),
                        ),
                        const SizedBox(width: 4),
                        ExpandableIcon(
                          size: 20,
                          isExpanded: isExpanded,
                          onPressed: (_) => onExpand(),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      cluster.title,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 8),
            InkWell(
              borderRadius: BorderRadius.circular(16),
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.withAlpha(45),
                ),
                padding: const EdgeInsets.all(6),
                child: const Icon(Icons.check, size: 18),
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        if (!isExpanded) const Divider(color: Colors.black12),
        ExpandableContainer(
          isExpanded: isExpanded,
          child: const Column(children: [Text('I am expanded')]),
        ),
      ],
    );
  }
}

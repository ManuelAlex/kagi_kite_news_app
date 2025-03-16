import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/core.dart';
import '../../core/utils/first_letter_index.dart';
import '../../core/utils/sort_cluster.dart';
import '../../domain/domain.dart';

import '../../domain/usecases/toggle_news_cluster_is_read.dart';
import '../providers/news_category_details_provider/news_category_details_provider.dart';
import '../providers/news_category_details_provider/toggle_news_cluster_is_read_usecase_provider.dart';
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
  int? get expandedIndex => _expandedIndex;
  set expandedIndex(int? index) => setState(() {
    _expandedIndex = _expandedIndex == index ? null : index;
  });

  @override
  Widget build(BuildContext context) {
    final AsyncValue<Result<CategoryDetails>> detailsAsync = ref.watch(
      newsCategoryDetailsProvider(widget.category.file),
    );

    return detailsAsync.when(
      data: (Result<CategoryDetails> result) {
        return switch (result) {
          final Success<CategoryDetails> categoryDetails =>
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ...categoryDetails.data.clusters
                        .sortCluster()
                        .asMap()
                        .entries
                        .map<Widget>((MapEntry<int, Cluster> entry) {
                          final int index = entry.key;
                          final Cluster cluster = entry.value;
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4.0),
                            child: ClusterView(
                              cluster: cluster,

                              isExpanded: _expandedIndex == index,
                              onExpand: () => expandedIndex = index,
                              clusterIndex: index,
                              fileName: widget.category.file,
                            ),
                          );
                        }),
                    const SizedBox(height: 16),
                    if (categoryDetails.data.clusters.isNotEmpty)
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: double.infinity,

                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.black12.withAlpha(20),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Center(
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

class ClusterView extends ConsumerStatefulWidget {
  const ClusterView({
    super.key,
    required this.cluster,
    required this.isExpanded,
    required this.onExpand,
    required this.clusterIndex,
    required this.fileName,
  });

  final Cluster cluster;
  final bool isExpanded;
  final VoidCallback onExpand;
  final int clusterIndex;
  final String fileName;

  @override
  ConsumerState<ClusterView> createState() => _ClusterViewState();
}

class _ClusterViewState extends ConsumerState<ClusterView> {
  bool _isRead = false;
  bool get isRead => _isRead;
  set isRead(bool value) {
    setState(() {
      _isRead = value;
    });
  }

  @override
  void initState() {
    _isRead = widget.cluster.isRead;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final int index = widget.cluster.category.firstLetterIndex;
    final MaterialColor categoryColor =
        Colors.primaries[index % Colors.primaries.length];

    final ToggleNewsClusterIsReadUseCase isReadUseCase = ref.watch(
      toggleNewsClusterIsReadUseCaseProvider,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: GestureDetector(
                onTap: widget.onExpand,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          widget.cluster.category,
                          style: Theme.of(context).textTheme.titleSmall
                              ?.copyWith(color: categoryColor),
                        ),
                        const SizedBox(width: 4),
                        ExpandableIcon(
                          size: 20,
                          isExpanded: widget.isExpanded,
                          onPressed: (_) => widget.onExpand(),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      widget.cluster.title,
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
              onTap: () async {
                final bool newReadStatus = !isRead;
                final ToggleClusterReadParam isReadClusterParam =
                    ToggleClusterReadParam(
                      clusterIndex: widget.clusterIndex,
                      fileName: widget.fileName,
                      isRead: newReadStatus,
                    );
                final Result<bool> isReadResult = await isReadUseCase.call(
                  isReadClusterParam,
                );

                if (isReadResult.isSuccess) {
                  isRead = newReadStatus;
                }
              },
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isRead ? Colors.blue : Colors.black12,
                ),
                padding: const EdgeInsets.all(4),
                child: const Icon(Icons.check, size: 14, color: Colors.white),
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        if (!widget.isExpanded) const Divider(color: Colors.black12),
        ExpandableContainer(
          isExpanded: widget.isExpanded,
          child: const Column(children: <Widget>[Text('I am expanded')]),
        ),
      ],
    );
  }
}

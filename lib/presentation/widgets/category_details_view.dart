import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/core.dart';
import '../../core/utils/sort_cluster.dart';
import '../../domain/domain.dart';

import '../../domain/usecases/toggle_news_cluster_is_read.dart';
import '../providers/news_category_details_provider/news_category_details_provider.dart';
import '../providers/news_category_details_provider/toggle_news_cluster_is_read_usecase_provider.dart';
import 'cluster_view.dart';
import 'error_block.dart';

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

  final Map<int, bool> _readStatusMap = <int, bool>{};

  Future<void> _markAllAsRead(
    List<Cluster> clusters,
    ToggleNewsClusterIsReadUseCase isReadUseCase,
  ) async {
    final Map<int, bool> updatedReadStatusMap = {};

    for (int i = 1; i < clusters.length + 1; i++) {
      final ToggleClusterReadParam isReadClusterParam = ToggleClusterReadParam(
        clusterIndex: i - 1,
        fileName: widget.category.file,
        isRead: true,
      );

      final Result<bool> result = await isReadUseCase.call(isReadClusterParam);
      if (result.isSuccess) {
        updatedReadStatusMap[i] = true;
      }
    }

    setState(() {
      _readStatusMap.addAll(updatedReadStatusMap);
    });
  }

  bool _areAllClustersMarked(List<Cluster> clusters) {
    return clusters.every((cluster) {
      return _readStatusMap[cluster.clusterNumber] ?? cluster.isRead;
    });
  }

  @override
  Widget build(BuildContext context) {
    final AsyncValue<Result<CategoryDetails>> detailsAsync = ref.watch(
      newsCategoryDetailsProvider(widget.category.file),
    );
    final ToggleNewsClusterIsReadUseCase isReadUseCase = ref.watch(
      toggleNewsClusterIsReadUseCaseProvider,
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
                    ...categoryDetails.data.clusters.sortCluster().map<Widget>((
                      Cluster cluster,
                    ) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: ClusterView(
                          key: ValueKey(cluster.clusterNumber),
                          isReadOverride:
                              _readStatusMap[cluster.clusterNumber] ??
                              cluster.isRead,
                          cluster: cluster,
                          isExpanded: _expandedIndex == cluster.clusterNumber,
                          onExpand: () => expandedIndex = cluster.clusterNumber,
                          clusterIndex: cluster.clusterNumber,
                          fileName: widget.category.file,
                          onToggleRead: (bool isRead) {
                            setState(() {
                              _readStatusMap[cluster.clusterNumber] = isRead;
                            });
                          },
                        ),
                      );
                    }),
                    const SizedBox(height: 16),
                    if (categoryDetails.data.clusters.isNotEmpty &&
                        !_areAllClustersMarked(categoryDetails.data.clusters))
                      InkWell(
                        onTap: () async {
                          await _markAllAsRead(
                            categoryDetails.data.clusters,
                            isReadUseCase,
                          );
                        },
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

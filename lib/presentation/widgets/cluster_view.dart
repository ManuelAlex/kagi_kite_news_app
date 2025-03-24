import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/core.dart';
import '../../domain/entities/value_objects/cluster.dart';
import '../../domain/usecases/toggle_news_cluster_is_read.dart';
import '../providers/news_category_details_provider/toggle_news_cluster_is_read_usecase_provider.dart';
import '_cluster_exapanded_view.dart';
import '_expandable_container.dart';

class ClusterView extends ConsumerStatefulWidget {
  const ClusterView({
    super.key,
    required this.cluster,
    required this.isExpanded,
    required this.onExpand,
    required this.clusterIndex,
    required this.fileName,
    required this.isReadOverride,
    required this.onToggleRead,
    required this.closeStory,
  });

  final Cluster cluster;
  final bool isExpanded;
  final VoidCallback onExpand;
  final int clusterIndex;
  final String fileName;
  final bool isReadOverride;
  final ValueChanged<bool> onToggleRead;
  final VoidCallback closeStory;

  @override
  ConsumerState<ClusterView> createState() => _ClusterViewState();
}

class _ClusterViewState extends ConsumerState<ClusterView> {
  bool _isRead = false;

  @override
  void initState() {
    super.initState();
    _isRead = widget.isReadOverride;
  }

  @override
  void didUpdateWidget(covariant ClusterView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.isReadOverride != widget.isReadOverride) {
      setState(() {
        _isRead = widget.isReadOverride;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final int index = widget.cluster.clusterNumber;
    final MaterialColor categoryColor =
        Colors.primaries[index % Colors.primaries.length];

    final ToggleNewsClusterIsReadUseCase isReadUseCase = ref.watch(
      toggleNewsClusterIsReadUseCaseProvider,
    );

    return GestureDetector(
      onTap: () async {
        final ToggleClusterReadParam isReadClusterParam =
            ToggleClusterReadParam(
              clusterIndex: widget.clusterIndex - 1,
              fileName: widget.fileName,
              isRead: true,
            );
        final Result<bool> isReadResult = await isReadUseCase.call(
          isReadClusterParam,
        );
        if (isReadResult.isSuccess) {
          setState(() {
            _isRead = true;
          });

          widget.onToggleRead(true);
        }
        widget.onExpand();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
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
                        ExpandIcon(
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
                        fontWeight:
                            _isRead ? FontWeight.normal : FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              InkWell(
                key: const Key('isReadButton'),
                borderRadius: BorderRadius.circular(16),
                onTap: () async {
                  final bool newReadStatus = !_isRead;
                  final ToggleClusterReadParam isReadClusterParam =
                      ToggleClusterReadParam(
                        clusterIndex: widget.clusterIndex - 1,
                        fileName: widget.fileName,
                        isRead: newReadStatus,
                      );
                  final Result<bool> isReadResult = await isReadUseCase.call(
                    isReadClusterParam,
                  );
                  if (isReadResult.isSuccess) {
                    setState(() {
                      _isRead = newReadStatus;
                    });

                    widget.onToggleRead(newReadStatus);
                  }
                },
                child: Container(
                  key: const Key('isReadContainer'),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _isRead ? Colors.blue : Colors.black12,
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
            child: ClusterExpandedView(
              cluster: widget.cluster,
              closeStory: widget.closeStory,
            ),
          ),
        ],
      ),
    );
  }
}
